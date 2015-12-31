using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Diagnostics;

namespace talktohector //NEW CODE
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SendEmail(object sender, EventArgs e)
        {
            string EncodedResponse = Request.Form["g-recaptcha-response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "True" ? true : false);

            if (IsCaptchaValid)
            {

                System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
                message.To.Add("hquiles@talktohector.com");
                message.Subject = "This is the Subject line";
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
                    mailStatusLabel.Text = "Mail Sent";


                }
                catch (Exception ex)
                {
                    mailStatusLabel.Text = "ERROR\n" + ex.Message;
                }
            }
        }
    }
}