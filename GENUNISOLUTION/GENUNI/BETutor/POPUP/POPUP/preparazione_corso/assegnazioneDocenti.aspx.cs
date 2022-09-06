using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assegnazioneDocenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MATERIE.Materie_WSSoapClient M = new MATERIE.Materie_WSSoapClient();
        int COD_CORSO = Convert.ToInt32(Session["CHIAVE"].ToString());
        ddlMaterie.DataSource = M.SelectNonAssegnate(COD_CORSO);
        ddlMaterie.DataBind();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //procedure per selezione del profe
    }


    protected void btnCronistoriaDocente_Click(object sender, EventArgs e)
    {
        //Session["COD_DOCENTE"]=
        Response.Redirect("../../PREPARAZIONE_CORSO/cronistoriaDocenti3.aspx");
    }



    protected void ddlMaterie_SelectedIndexChanged(object sender, EventArgs e)
    {
        int materia = Convert.ToInt32(ddlMaterie.SelectedValue);
    }
}