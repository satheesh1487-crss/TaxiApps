﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TaxiAppsWebAPICore.Models;
using TaxiAppsWebAPICore.TaxiModels;

namespace TaxiAppsWebAPICore.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly TaxiAppzDBContext _context;
        public UserController(TaxiAppzDBContext context)
        {
            _context = context;
        }


        [HttpGet]
        [Route("UserList")]
        [Authorize]
        public IActionResult GetUserList()
        {
            DAUsers dAUsers = new DAUsers();
            return this.OK<List<UserList>>(dAUsers.List(_context));
        }

        [HttpGet]
        [Route("BlockedUserList")]
        [Authorize]
        public IActionResult GetBlockedUserList()
        {
            DAUsers dAUsers = new DAUsers();
            return this.OK<List<UserList>>(dAUsers.BlockedList(_context));
        }
       

        //TODO:: check parent record is deleted
        [HttpDelete]
        [Route("DeleteUser")]
        [Authorize]
        public IActionResult DeleteUser(long userid)
        {
            DAUsers dAUsers = new DAUsers();
            return this.OKResponse(dAUsers.Delete(_context, userid, User.ToAppUser()) == true ? "Deleted Successfully" : "Deletion Failed");
        }

        //TODO:: check parent record is deleted
        [HttpPut]
        [Route("InActiveuser")]
        [Authorize]
        public IActionResult InActiveuser(long userid, bool status)
        {
            DAUsers dAUsers = new DAUsers();
            return this.OKResponse(dAUsers.DisableUser(_context, userid, status, User.ToAppUser()) == true ? (status == true ? "Active Successfully" : "InActive Successfully"):"Failed to Update");
        }

        

        [HttpGet]
        [Route("downloadUser")]
        [Authorize]
        public IActionResult DownloadUser()
        {
            DAUsers dAUsers = new DAUsers();
            var users = dAUsers.List(_context);
            var userlist = dAUsers.List(_context);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < userlist.Count; i++)
            {
                UserList customer = userlist[i];                
                sb.Append(userlist[i].Email + ',');
                sb.Append(userlist[i].Name + ',');
                sb.Append(userlist[i].Phoneno + ',');
                sb.Append("\r\n");

            }
            return File(Encoding.UTF8.GetBytes(sb.ToString()), "text/csv", "Grid.csv");
        }

        [HttpPost]
        [Route("downloadBlocked")]
        [Authorize]
        public IActionResult DownloadBlocked()
        {
            DAUsers dAUsers = new DAUsers();
            var users = dAUsers.BlockedList(_context);
            var userlist = dAUsers.List(_context);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < userlist.Count; i++)
            {
                UserList customer = userlist[i];
                sb.Append(userlist[i].Email + ',');
                sb.Append(userlist[i].Name + ',');
                sb.Append(userlist[i].Phoneno + ',');
                sb.Append("\r\n");

            }
            
            return File(Encoding.UTF8.GetBytes(sb.ToString()), "text/csv", "Grid.csv");
        }




    }
}
