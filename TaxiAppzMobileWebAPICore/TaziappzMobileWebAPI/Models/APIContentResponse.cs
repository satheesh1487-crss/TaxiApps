﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TaziappzMobileWebAPI 
{
    public class APIContentResponse<T> : APIResponse
    {
        [JsonProperty("content")]
        public T Content { get; set; } 
    }
}
