﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

public class MAIL
{
    public string mailUtente;
    public string rndCodice;

    public MAIL()
    {

    }
    public void mailInvia()
    {
        // invio una mail

        MailMessage mail = new MailMessage();

        SmtpClient client = new SmtpClient();

        // imposto il server smptp
        client.Credentials = new NetworkCredential(K.user, K.pw);
        client.Port = K.porta;
        client.Host = K.host;
        client.EnableSsl = false;

        //imposto la mail
        mail.Subject = "Conferma registrazione";

        //INSERIRE TESTO EMAIL!!!!!
        mail.Body = "Inserire testo email";
        mail.IsBodyHtml = true;
        mail.To.Add(new MailAddress(mailUtente));
        mail.From = new MailAddress("doita05@setsistemi.it");

        client.Send(mail);
    }
}