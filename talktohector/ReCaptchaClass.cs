
using Newtonsoft.Json;
using System.Collections.Generic;
using System;
using System.Web.Script.Serialization;
namespace talktohector
{

    public class ReCaptchaClass
    {

        [JsonProperty("success")]
        public string Success
        {
            get { return m_Success; }

            set { m_Success = value; }
        }

        private string m_Success;

        [JsonProperty("error-codes")]


        public List<string> ErrorCodes
        {
            get { return m_ErrorCodes; }
            set { m_ErrorCodes = value; }
        }


        private List<string> m_ErrorCodes;

        public static string Validate(string EncodedResponse)
        {


            try
            {
                var client = new System.Net.WebClient();

                string PrivateKey = "6LdGKRQTAAAAAIj9gxgvQtl2eVAFjW_4ym9X7ZNk";

                var GoogleReply = client.DownloadString(string.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", PrivateKey, EncodedResponse));

                JavaScriptSerializer js = new JavaScriptSerializer();
                var captchaResponse = js.Deserialize<ReCaptchaClass>(GoogleReply);// Deserialize Json

                if (captchaResponse.ToString() == "true")
                {
                   return captchaResponse.Success; 
                }
                else
                {
                    return "false";
                }
                
              
            }
            catch (JsonException e)
            {
                Console.WriteLine(e.Message + "\n\n" + e.InnerException + "\n\n" + e.Source);
                return "false";
            }

        }


    }
}