﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TaxiAppsWebAPICore
{
    public class APIResponse
    {
        [JsonProperty("isOK")]
        public bool IsOK { get; set; }

        [JsonProperty("message")]
        public string Message { get; set; }
    }
}
