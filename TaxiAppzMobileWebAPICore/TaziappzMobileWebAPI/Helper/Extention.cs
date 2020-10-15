﻿using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.IO;
using System.Linq;
using System.Net.NetworkInformation;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using TaziappzMobileWebAPI.TaxiModels;
 

namespace TaziappzMobileWebAPI
{
    public  static  class Extention
    {
        public static IConfiguration configuration;
        
        internal static IActionResult OKResponse(this ControllerBase controller, string msg)
        {
            return controller.Ok(new APIResponse()
            {
                Message = msg
              //  success = true
            });
        }
        internal static IActionResult OKFailed(this ControllerBase controller, string msg)
        {
            return controller.Ok(new APIResponse()
            {
               Message = msg
              //  success = true
            });
        }
        internal static IActionResult OKStatus(this ControllerBase controller, string msg, int isExist)
        {
            return controller.Ok(new APIResponse()
            {
                Message = msg ,
              //  success = true,
                isExist = isExist
            });
        }
        internal static IActionResult OK<T>(this ControllerBase controller, T content, string msg, int isExist)
        {
            return controller.Ok(new APIContentResponse<T>()
            {
                Content = content,
                Message = msg,
               // success = true,
                isExist = isExist
            });
        }
        //internal static IActionResult OK<T>(this ControllerBase controller,T content, string msg)
        //{
        //    return controller.Ok(new APIContentResponse<T>()
        //    {
        //        ContentList = content
        //    });
        //}

        internal static IActionResult OKRESPONSE<T>(this ControllerBase controller, T content,string msg)
        {
            return controller.Ok(new APIContentResponse<T>()
            {
               // success = true,
                Message = msg,
                Content =content
            });
        }
        internal static string GenerateJWTToken(TabUser userinfo,TaxiAppzDBContext context)
        {
            try
            {
                insertlog("Token Generation", userinfo.Email, "GenerateJWTToken",context);
                //var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["Jwt:SecretKey"]));
                var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("nplustechnologies"));
                var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
                var claims = new[]
                {
                new Claim(JwtRegisteredClaimNames.Sub, userinfo.Firstname),
                new Claim("lastName", userinfo.Lastname),
                new Claim("contactno", userinfo.PhoneNumber),
                new Claim("EmailID", userinfo.Email),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                };

                var token = new JwtSecurityToken(
                     //issuer: configuration["Jwt:Issuer"],
                     //audience: configuration["Jwt:Audience"],
                     issuer: "https://localhost:44375/",
                    audience: "https://localhost:44375/",
                    claims: claims,
                    expires: DateTime.Now.AddMinutes(30),
                    signingCredentials: credentials
                );

                return new JwtSecurityTokenHandler().WriteToken(token);
            }
            catch (Exception ex)
            {
                insertlog(ex.Message, userinfo.Email, "GenerateJWTToken",context);
                return null;
            }
             
        }

        /// <summary>
        /// Send an Not ok result
        /// </summary>
        /// <param name="controller"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        internal static IActionResult KnowOperationError(this ControllerBase controller, string message)
        {
            return controller.Ok(new APIResponse()
            {
             //   success = false,
                Message = message
            });
        }

        internal static bool UpdateUserToken(string emailid, UserInfo userInfo, TaxiAppzDBContext context)
        {
            try
            {
                insertlog("Update Token", userInfo.Email, "GenerateJWTToken", context);
                var getuserinfo = context.TabUser.Where(a => a.Email == emailid.Trim()).FirstOrDefault();
                getuserinfo.Token = userInfo.RememberToken;
                getuserinfo.TokenExpiry = userInfo.ExpireDate;
                getuserinfo.UpdatedAt = DateTime.Now;
                context.TabUser.Update(getuserinfo);
                context.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                insertlog(ex.Message, userInfo.Email, "GenerateJWTToken", context);
                return false;
            }
        }
        internal  static bool insertlog(string description,string userid,string functionname,TaxiAppzDBContext context)
        {
            TblErrorlog tblErrorlog = new TblErrorlog();
            tblErrorlog.Description = description;
            tblErrorlog.CreatedBy = userid;
            tblErrorlog.FunctionName = functionname;
            TaxiAppzDBContext _context = new TaxiAppzDBContext();
           context.TblErrorlog.Add(tblErrorlog);
           // context.SaveChanges();
            return true;
        }
        
           /// <summary>
        /// Get IFormFile object from StorageFileInfo object
        /// </summary>
        /// <param name="formFile"></param>
        internal static StorageFileInfo GetStorageFile(this IFormFile formFile)
        {
            return new StorageFileInfo()
            {
                FormFile = formFile,
                Extension = Path.GetExtension(formFile.FileName),
                UploadId = Guid.NewGuid()
            };
        }
        
          /// <summary>
        /// Claims principal
        /// </summary>
        /// <param name="claimsPrincipal"></param>
        /// <returns></returns>
        internal static LoggedInUser ToAppUser(this ClaimsPrincipal claimsPrincipal)
        {
            return new LoggedInUser()
            {
                FistName = ((ClaimsIdentity)claimsPrincipal.Identity).FindFirst(ClaimTypes.NameIdentifier)?.Value,
                LastName = ((ClaimsIdentity)claimsPrincipal.Identity).FindFirst("lastName")?.Value,
                Country = Convert.ToInt32(((ClaimsIdentity)claimsPrincipal.Identity).FindFirst("country")?.Value),
                Contactno = ((ClaimsIdentity)claimsPrincipal.Identity).FindFirst("Contactno")?.Value,
                Email = ((ClaimsIdentity)claimsPrincipal.Identity).FindFirst("mailID")?.Value,
                id = Convert.ToInt32(((ClaimsIdentity)claimsPrincipal.Identity).FindFirst("id")?.Value)
               
            };
        }

       
    }
}
