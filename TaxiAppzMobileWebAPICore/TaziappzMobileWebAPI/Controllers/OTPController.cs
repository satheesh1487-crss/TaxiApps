﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using TaxiAppsWebAPICore.Helper;
using TaxiAppsWebAPICore.Services;
using TaziappzMobileWebAPI.DALayer;
using TaziappzMobileWebAPI.Interface;
using TaziappzMobileWebAPI.Models;
using TaziappzMobileWebAPI.TaxiModels;

namespace TaziappzMobileWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OTPController : ControllerBase
    {
        public readonly TaxiAppzDBContext _context;
        public  IValidate validate;
      
        public   IToken token;
        public   readonly IOptions<JWT> jwt;
        public OTPController(TaxiAppzDBContext context,IValidate _validate,IToken _token,IOptions<JWT> _jwt)
        {
            _context = context;
            validate = _validate;
           
            token = _token;
            jwt = _jwt;
        }
        //[HttpPost]
        //[AllowAnonymous]
        //[Route("GenerateOTP")]
        //public IActionResult GenerateOTP([FromBody] OTPModel otpmodel)
        //{
        //    DAOTP otp = new DAOTP();
        //    return this.OKResponse(otp.GenerateOTP(otpmodel,_context));

        //}
        //[HttpGet]
        //[AllowAnonymous]
        //[Route("ValidateOTP")]
        //public IActionResult ValidateOTP(long OTP)
        //{
        //    DAOTP otp = new DAOTP();
        //    return null;
        //   // return this.OK<UserInfo>(otp.ValidateOTP(OTP, _context));
        //}
        /// <summary>
        /// Use to Validate User Contact No
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [AllowAnonymous]
        [Route("userValidateContactNo")]
        public IActionResult ValidateMobileno(string contactno)
        {
            SignInmodel signinmodel = new SignInmodel();
            signinmodel.Contactno = contactno;
            validate = new DAUserValidate(_context);
            bool status = validate.MobileValidation(signinmodel);
            return this.OKStatus(status ? "phoneValidated" : "phoneInValidated", status ? 1 : 0);
        }

        /// <summary>
        /// Use to Regenerate AccessToken once Session Exipred
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [AllowAnonymous]
        [Route("UserRegenerateAccessToken")]
        public IActionResult RegenerateAccessToken(string refreshtoken, string contactno)
        {
            token = new Token(_context, jwt);
           List<DetailsWithToken> detailsWithToken = new List<DetailsWithToken>();
            detailsWithToken = token.ReGenerateJWTTokenDtls(refreshtoken, contactno); //(List)token.ReGenerateJWTTokenDtls(refreshtoken, contactno);
            return this.OK<List<DetailsWithToken>>(detailsWithToken,detailsWithToken.Count == 0 ? "Access token Generation Failed" : "Access token Generated Successfully", detailsWithToken.Count == 0 ? 0 : 1);
        }
       
        
    }
}
