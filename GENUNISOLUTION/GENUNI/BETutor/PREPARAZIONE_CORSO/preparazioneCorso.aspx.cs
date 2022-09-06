using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();
        dt=C.SelectAll();

        ddlCorsi.DataValueField = dt.Columns["CHIAVE"].ToString();
        ddlCorsi.DataTextField = dt.Columns["TITOLO"].ToString();

        ddlCorsi.DataBind();
    }
    protected void btnSelezionaCorso_Click(object sender, EventArgs e)
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        DataTable dt = new DataTable();

        int COD_CORSO = Convert.ToInt32(ddlCorsi.SelectedValue);

        dt= C.SelectOne(COD_CORSO);
        //carico i dati di un altro corso
        int COD_UTENTE = Convert.ToInt32(Session["CodiceAttore"]);
        string TITOLO = dt.Rows[0]["TITOLO"].ToString();
            string TIPO = dt.Rows[0]["TITOLO"].ToString();
        string DESCRIZIONE = dt.Rows[0]["TITOLO"].ToString();
        byte[] AVATAR_CORSO = (byte[])(dt.Rows[0]["AVATAR_CORSO"]);
        string DATA_PARTENZA = dt.Rows[0]["DATA_PARTENZA"].ToString();
        string TIPOIMG = dt.Rows[0]["TIPO_IMG"].ToString();
        string STATUS = "C";

        C.Update(COD_UTENTE, TITOLO, TIPO, DESCRIZIONE, AVATAR_CORSO, DATA_PARTENZA, STATUS, TIPOIMG);
    }

    protected void GridCorsi_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CHIAVE"] = GridCorsi.SelectedDataKey.ToString();
    }
    protected void btnInserisciCorso_Click(object sender, EventArgs e)
    {
        CORSI.Corsi_WSSoapClient C = new CORSI.Corsi_WSSoapClient();
        int COD_UTENTE = Convert.ToInt32(Session["CodiceAttore"]);
        string TITOLO = txtTitolo.Text;
        string TIPO = txtTipo.Text;
        string DESCRIZIONE = txtDescrizione.Text;
        byte[] AVATAR_CORSO = UploadAvatar.FileBytes;
        string DATA_PARTENZA = txtDataDiPartenza.Text;
        string STATUS = "C";
        string TIPOIMG = UploadAvatar.PostedFile.ContentType;

        C.Update(COD_UTENTE, TITOLO, TIPO, DESCRIZIONE, AVATAR_CORSO, DATA_PARTENZA, STATUS, TIPOIMG);

    }

    protected void btnAssegnazioneDocenti_Click(object sender, EventArgs e)
    {
        Response.Redirect("/POPUP/preparazione_corso/assegnazioneDocenti.aspx");
    }

    protected void btnDefinizioneMateria_Click(object sender, EventArgs e)
    {
        Response.Redirect("/POPUP/preparazione_corso/definizioneMaterie.aspx");
    }


}