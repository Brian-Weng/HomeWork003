using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HomeWorkWeek3.Utility;

namespace HomeWorkWeek3
{
    public partial class LoginPage : System.Web.UI.Page
    {
        private string Url = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            Url = Request.RawUrl;
            if(DBLoginHelper.HasLogined())
            {
                Response.Redirect("~/WebForm1.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string acc = this.txtAccount.Text;
            string pwd = this.txtPwd.Text;
            if (DBLoginHelper.TryLogin(acc, pwd))
            {
                Response.Redirect("~/WebForm1.aspx");
            }
            else
            {
                this.ltMassage.Text = "LoginFail";
            }
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            this.txtAccount.Text = string.Empty;
            this.txtPwd.Text = string.Empty;
        }
    }
}