using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapitalLettersCounter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                // Döljer här submitknappen och visar istället en resetknapp.
                countSubmit.Visible = false;
                resetForm.Visible = true;
            }
        }

        protected void countSubmit_Click(object sender, EventArgs e)
        {
            // Avaktiverar textboxen, sedan anropar jag min metod för att beräkna antalet versaler.
            userTextInput.Enabled = false;            
            countResult.Text = String.Format("Texten innehåller {0} versaler.", Models.TextAnalyzer.GetNumberOfCapitals(userTextInput.Text).ToString());           
        }

        protected void resetForm_Click(object sender, EventArgs e)
        {
            // Återställer här postbackstatusen till inget, vilket gör att sidan presenteras i sitt originalutförande igen.
            Session["ViewState"] = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}