using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace CapitalLettersCounter.Models
{
    public static class TextAnalyzer
    {
        public static int GetNumberOfCapitals(string text)
        {
            string capitalLetters;
            int numberOfCapitalLetters;

            // Matchar här alla gemener, tar sedan bort dem ur strängen - till sist räknar jag antalet kvarstående tecken och returnerar dessa.
            Regex reg = new Regex(@"[a-zåäö]| ");
            capitalLetters = reg.Replace(text, "");
            numberOfCapitalLetters = capitalLetters.Length;

            return numberOfCapitalLetters;
        }
    }
}