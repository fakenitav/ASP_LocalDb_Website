using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace Microsoft.Pages
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sentmail.Visible = false;
        }

        protected void SendEmail(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage(txtEmail.Text, txtTo.Text);//create MailMessage class object
            mail.Subject = txtSubject.Text;
            mail.Body = txtBody.Text;
            if (fuAttachment.HasFile)
            {
                string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                mail.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
            }
            mail.IsBodyHtml = false;

            SmtpClient smtp = new SmtpClient();//Creating Smtp class objec
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;

            NetworkCredential NetworkCred = new NetworkCredential(txtEmail.Text, txtPassword.Text);//set Network Credential
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mail);
            sentmail.Text = "Mail Sent Successfully";
            sentmail.Visible = true;
        }
    }
}