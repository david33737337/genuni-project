using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class corsiDegliStudenti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int codiceStudente = int.Parse(Session["CodiceStudente"].ToString());
        // griglia di tutti gli studenti che selezionati avremo disponibile i corsi di ogni studente

    }
}