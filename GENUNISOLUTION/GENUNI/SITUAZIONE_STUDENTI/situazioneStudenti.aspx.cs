using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class situazioneStudenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grvStudenti_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CodiceStudente"] = grvStudenti.SelectedRow.Cells[0];
    }
}