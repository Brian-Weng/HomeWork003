using HomeWorkWeek3.Utility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWorkWeek3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (DBLoginHelper.HasLogined())
            //{
                int currentPageIndex = Convert.ToInt32(Request.QueryString["Page"]);
                if (currentPageIndex == 0)
                    currentPageIndex = 1;
                int start = (currentPageIndex * 10) - 9;
                int end = currentPageIndex * 10;
                DataTable dt = DataBaseExecutor.ReadTestTableFewRows(start, end);

                DataTable dtAll = DataBaseExecutor.ReadTestTable1DT();
                ucPager.TotalSize = dtAll.Rows.Count; //設定ucPager的屬性
                ucPager.Url = "~/WebForm1.aspx"; //設定ucPager的屬性
                ucPager.Bind(); //執行ucPager的方法

                this.Repeater1.DataSource = dt;
                this.Repeater1.DataBind();
            //}
            //else
            //{
            //    Response.Redirect("~/LoginPage.aspx");
            //}    
        }
    }
}