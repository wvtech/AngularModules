using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace CRM_RepairManagement.BusinessLayer
{
    public class MailHelper
    {
        public string SendEmail(string MailTo, string Subject, String Body)
        {
            try
            {                
                MailMessage myMessage = new MailMessage();
                myMessage.Subject = Subject;
                myMessage.Body = Body;
                myMessage.From = new MailAddress("test@test.com");
                myMessage.To.Add(new MailAddress(MailTo));
                //myMessage.To.Add(new MailAddress(PasswordSecurity.Decrypt(MailTo)));
                //  myMessage.IsBodyHtml = true;                
                var FromAddress = "test@test.com";
                var Password = "P@55w0rd!";
                SmtpClient Smtp = new SmtpClient();
                Smtp.Host = "smtp.office365.com";
                Smtp.Port = 587;
                Smtp.EnableSsl = true;
                Smtp.Credentials = new NetworkCredential(FromAddress, Password);
                Smtp.Send(myMessage);
                return "Mail Sent Successfully";
            }
            catch
            {
                return "Error!";
            }
        }
    }
}