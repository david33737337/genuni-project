﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {

            // controlli formali
            if (string.IsNullOrEmpty(txtMail.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Attenzione: compilare tutti i campi!')", true);
                return;
            }

            // occhio alla pass, è criptata!! se volete fare delle prove inserendo qualcosa a mano dal DB
            // togliete il CRYPTA a riga 27 e 33

            UTENTI.Utenti_WSSoapClient U = new UTENTI.Utenti_WSSoapClient();
            CRYPTA.Crypta_WSSoapClient C = new CRYPTA.Crypta_WSSoapClient();

            string usr = txtMail.Text.Trim();

            string plaintext = txtPassword.Text.Trim();

            string pwd = C.PWD_CRYPTA(plaintext);

            // se il login va a buon fine, reindirizzo alla pagina figlia "default.aspx
            // e mi salvo il tipoUtente nella session

            if (U.Login(usr, plaintext) == true)
            {
                int CodiceAttore = U.RecuperaCodUtente(usr);
                Session["CodiceAttore"] = CodiceAttore;

                Session["TipoAttore"] = U.TipoLogin(usr, pwd);

                char usertype = Convert.ToChar(Session["TipoAttore"]);

                if (U.Controlla_Abilitazione(CodiceAttore) == true)
                {
                    switch (usertype)
                    {
                        case 'A':
                            Response.Redirect("../BEAdmin/GestioneAdmin.aspx"); //Inserire le pagine principali di redirect 
                            break;

                        case 'T':
                            Response.Redirect("../BETutor/GestioneTutor.aspx"); //Inserire le pagine principali di redirect 
                            break;

                        case 'C':
                            Response.Redirect("../BEContabilita/Compenso.aspx"); //Inserire le pagine principali di redirect 
                            break;
                    }
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('L'account non è attivo')", true);
                    return;
                }
            }

            else
            {
                ESTERNI.Esterni_WSSoapClient E = new ESTERNI.Esterni_WSSoapClient();

                if (E.Login(usr, pwd) == true)
                {
                    int CodiceAttore = E.RecuperaCodUtente(usr);
                    Session["CodiceAttore"] = CodiceAttore;

                    Session["TipoAttore"] = E.TipoLogin(usr, pwd);
                    char usertype = Convert.ToChar(Session["TipoAttore"]);

                    if (E.Controlla_Abilitazione(CodiceAttore) == true)
                    {
                        switch (usertype)
                        {
                            case 'S':
                                Response.Redirect("../BEStudenti/Modifica_Profilo.aspx"); //Inserire le pagine principali di redirect 
                                break;

                            case 'D':
                                Response.Redirect("../BEDocenti/GestioneDocenti.aspx"); //Inserire le pagine principali di redirect 
                                break;
                        }
                    }

                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('L'account non è attivo)", true);
                        return;
                    }
                }

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "ATTENZIONE", "alert('Password o email errati o autorizzazione all'accesso negata')", true);
                return;
            }
        }
    }
}

internal class Datatable
{
}