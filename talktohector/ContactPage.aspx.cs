﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace talktohector
{
    public partial class ContactPage : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();
        }

        public void SendEmail(object sender, EventArgs e)
        {
            string EncodedResponse = Request.Form["g-recaptcha-response"];
           
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if ((!EncodedResponse.Equals("")) && (IsCaptchaValid))
            {

                System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
                message.To.Add("hquiles@talktohector.com");
                message.Subject = "TALKTOHECTOR.COM NEW FORM ENTRY";
                message.From = new System.Net.Mail.MailAddress("hquiles@talktohector.com");


                message.Body = "NAME: " + String.Format("{0}", Request.Form["name"]) + "\n" +
                               "EMAIL: " + String.Format("{0}", Request.Form["email"]) + "\n" +
                               "SUBJECT: " + String.Format("{0}", Request.Form["subject"]) + "\n" +
                               "MESSAGE: " + String.Format("{0}", Request.Form["message"]);

                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("relay-hosting.secureserver.net", 25);
                smtp.EnableSsl = false;
                NetworkCredential credentials = new NetworkCredential("hquiles@talktohector.com", "***********");

                smtp.Credentials = credentials;
                
                try
                {
                   
                    smtp.Send(message);                    
                    emailSendWarning.Visible = false;
                    emailSendSuccess.Visible = true;
                    
                }
                catch (Exception ex)
                {

                    string exMessage = ex.InnerException.ToString();
                    emailSendWarning.InnerHtml = exMessage;
                    emailSendSuccess.Visible = false;
                    emailSendWarning.Visible = true;
                    
                }


            }

            else
            {
                emailSendSuccess.Visible = false;
                emailSendWarning.Visible = true;
               

            }
        }


    }
}
