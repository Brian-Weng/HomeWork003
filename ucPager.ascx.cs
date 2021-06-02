using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWorkWeek3
{
    public partial class ucPager : System.Web.UI.UserControl
    {
        public int PagingSize { get; set; } = 10;
        public int PageIndex { get; set; } = 1;
        public int TotalSize { get; set; } = 10;

        public string Url { get; set; }

        public enum SourceType
        {
            Inner = 0,
            Outter = 1
        }
        public SourceType SType { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void Bind()
        {
            int currentPageIndex = Convert.ToInt32(Request.QueryString["Page"]);
            if (currentPageIndex == 0)
                currentPageIndex = 1;

            int pages = TotalSize / PagingSize + 1;
            if (TotalSize % PagingSize == 0)
                pages -= 1;

            //動態顯示當前頁 / 總頁數
            this.ltCurrentPage.Text = currentPageIndex.ToString();
            this.ltTotalPage.Text = pages.ToString();

            //第一頁引數為1,最後一頁為總頁數
            this.aLinkFirst.HRef = this.BuildPagingUrl(1);
            this.aLinkLast.HRef = this.BuildPagingUrl(pages);
            //動態加入頁數
            for (int i = 1; i <= pages; i++)
            {
                this.plc1.Controls.Add(
                    new LinkButton()
                    {
                        ID = $"aPage{i}",
                        Text = $"{i}  ",
                        PostBackUrl = BuildPagingUrl(i)
                    }
                ) ;
            }
        }

        string BuildPagingUrl(int pageIndex)
        {
            return $"{Url}?Page={pageIndex}";
        }
    }
}