using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if the user control has already been added to the page
            if (Session["MyUserControl"] != null)
            {
                MyUserControl myControl = (MyUserControl)Session["MyUserControl"];
                panelContent.Controls.Add(myControl);
            }
            else
            {
                // create new instance of user control
                MyUserControl myControl = (MyUserControl)LoadControl("~/MyUserControl.ascx");
                panelContent.Controls.Add(myControl);
                // store instance in session variable
                Session["MyUserControl"] = myControl;
            }
        }

        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            // check if the user control has already been added to the page
            if (Session["MyUserControl"] != null)
            {
                MyUserControl myControl = (MyUserControl)Session["MyUserControl"];
                panelContent.Controls.Add(myControl);
            }
            else
            {
                // create new instance of user control
                MyUserControl myControl = (MyUserControl)LoadControl("~/MyUserControl.ascx");
                panelContent.Controls.Add(myControl);
                // store instance in session variable
                Session["MyUserControl"] = myControl;
            }
        }
    }
}
