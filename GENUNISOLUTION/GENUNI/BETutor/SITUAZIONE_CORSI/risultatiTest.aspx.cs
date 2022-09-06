using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class risultatiTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TEST.Test_WSSoapClient T = new TEST.Test_WSSoapClient();
        int COD_CORSO = int.Parse(Session["Chiave_Corso"].ToString());
        grvRisulati.DataSource=T.Test_SelectCorso(COD_CORSO);


    }
}