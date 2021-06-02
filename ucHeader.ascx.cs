using HomeWorkWeek3.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWorkWeek3
{
    public partial class ucHeader : System.Web.UI.UserControl
    {
        private const string _session_Key = "IsLogined";
        private const string _session_Account = "Account";
        protected void Page_Load(object sender, EventArgs e)
        {
            bool? var = this.Session[_session_Key] as bool?;
            if(var.HasValue && var.Value)
            {
                this.ltAccount.Text = DBLoginHelper.GetUserInfo();
                this.plc1.Visible = false;
                this.plc2.Visible = true;
            }
            else
            {
                this.plc1.Visible = true;
                this.plc2.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            bool? var = this.Session[_session_Key] as bool?;
            if(var.HasValue && var.Value)
            {
                this.Session.Remove(_session_Key);
                this.Session.Remove(_session_Account);

                this.plc1.Visible = true;
                this.plc2.Visible = false;

                Response.Redirect("~/LoginPage.aspx");
            }
        }
    }
}