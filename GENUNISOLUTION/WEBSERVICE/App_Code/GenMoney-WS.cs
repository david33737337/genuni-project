﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per GenMoney_WS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class GenMoney_WS : System.Web.Services.WebService
{

    public GenMoney_WS()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        GENMONEY g = new GENMONEY();
        dt = g.SelectAll();
        dt.TableName = "GenMoney";
        return dt;
    }

    [WebMethod]
    public DataTable SelectOne(int CHIAVE)
    {
        DataTable dt = new DataTable();
        GENMONEY g = new GENMONEY();
        g.Chiave = CHIAVE;
        dt = g.SelectOne();
        dt.TableName = "GenMoney";
        return dt;
    }

    [WebMethod]
    public void Insert(int COD_STUDENTE, int COD_CORSO, int AMMONTARE)
    {
        GENMONEY g = new GENMONEY();
        g.Cod_Studente = COD_STUDENTE;
        g.Cod_Corso = COD_CORSO;
        g.Ammontare = AMMONTARE;

        g.Insert();
    }

    [WebMethod]
    public DataTable Storico_Studente(int COD_STUDENTE)
    {
        GENMONEY g = new GENMONEY();
        g.Cod_Studente = COD_STUDENTE;
        DataTable dt = g.Storico_Studente();
        dt.TableName = "GenMoney";
        return dt;
    }

    // Per ricaricare Genmoney
    [WebMethod]
    public void Studenti_Acquisto(int COD_STUDENTE, int AMMONTARE, int COD_CORSO)
    {
        GENMONEY g = new GENMONEY();
        g.Cod_Studente = COD_STUDENTE;
        g.Ammontare = AMMONTARE;
        g.Cod_Corso = COD_CORSO;

        g.Studenti_Acquisto();
    }

    [WebMethod]
    public int SaldoStudente(int COD_STUDENTE)
    {
        GENMONEY g = new GENMONEY();

        g.Cod_Studente = COD_STUDENTE;
        return g.SaldoStudente();
    }

    [WebMethod]
    public void AcquistaCorso(int COD_STUDENTE, int COD_CORSO, int AMMONTARE)
    {
        GENMONEY g = new GENMONEY();
        g.Cod_Studente = COD_STUDENTE;
        g.Cod_Corso = COD_CORSO;
        g.Ammontare = AMMONTARE;

        g.Insert();
    }
}
