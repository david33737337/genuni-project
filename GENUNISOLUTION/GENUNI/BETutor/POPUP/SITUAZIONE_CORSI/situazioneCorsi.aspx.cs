using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();

        int COD_TUTOR = Convert.ToInt32(Session["CodiceAttore"]);
        C.SelectForTutor(int COD_TUTOR);


    }

    protected void grvCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Chiave_Corso"] = GridCorsi.SelectedRow.Cells[0];
    }

    protected void btnRisultatiTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("SITUAZIONE_CORSI/risultatitest.aspx");
    }

    protected void btnPreparaDomande_Click(object sender, EventArgs e)
    {
        Response.Redirect("/POPUP/preparazione_domande/preparazioneDomande.aspx");
    }

    protected void popupPreparaTest_Click(object sender, EventArgs e)
    {
        Response.Redirect("/POPUP/corsi/preparazioneTest.aspx");
    }
}