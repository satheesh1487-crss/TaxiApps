﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TaxiAppsWebAPICore;
 
using TaziappzMobileWebAPI;

namespace TaxiAppsWebAPICore.Services
{
   public interface IToken
    {
        List<DetailsWithToken> GenerateJWTTokenDtls(SignInmodel signInmodel);
        List<DetailsWithDriverToken> GenerateJWTDriverTokenDtls(SignInmodel signInmodel);
        List<DetailsWithToken> ReGenerateJWTTokenDtls(string refreshtoken,string contactno);
        List<DetailsWithDriverToken> ReGenerateDriverJWTTokenDtls(string refreshtoken, string contactno);
        
    }
}
