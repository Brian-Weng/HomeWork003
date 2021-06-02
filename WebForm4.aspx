<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="HomeWorkWeek3.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
      function($) {
    //設定頁碼方法,初始化
    $.fn.setPager = function(options) { 
    //合併PagerDefaults和options
    var opts = $.extend({}, pagerDefaults, options);
    return this.each(function() { 
    //修改,能夠動態設定PageSize 
    pagerDefaults.PageSize = options.PageSize;
    //先清空後新增(呼叫自定義的setPagerHtml方法) 
    $(this).empty().append(setPagerHtml(parseInt(options.RecordCount), parseInt(options.PageIndex), options.buttonClick));
    $('.pager a').mouseover(function() { document.body.style.cursor = "pointer"; }).mouseout(function() { document.body.style.cursor = "auto"; }); 
    }); 
    }; 
    //設定頁數及html
    //引數1:總條目數
    //引數2:當前頁 
    //引數3:頁碼按鈕 
    function setPagerHtml(RecordCount, PageIndex, pagerClick) {
    //呼叫pager樣式表
    var $content = $("<p class=/"pager/">"); 
        //起始頁 
        var startPageIndex = 1; 
        //若沒有條目數,則按 pagerDefaults.PageSize = options.PageSize;選擇的條目數來算 
        if (RecordCount <= 0) RecordCount = pagerDefaults.PageSize; 
        //頁尺寸
        var PageSize = pagerDefaults.PageSize; 
        //alert(pagerDefaults.PageSize); 
        //末頁
        var endPageIndex = parseInt(RecordCount % parseInt(PageSize)) > 0 ? parseInt(RecordCount / parseInt(PageSize)) + 1 : RecordCount / parseInt(PageSize); 
        //當前頁若大於末頁,則等於末頁
        if (PageIndex > endPageIndex) PageIndex = endPageIndex;
        //當前頁小於0,則等於起始頁 
        if (PageIndex <= 0) PageIndex = startPageIndex;
        //下一頁 
        var nextPageIndex = PageIndex + 1; 
        //上一頁 
        var prevPageIndex = PageIndex - 1; 
        //當前頁等於首頁 
        if (PageIndex == startPageIndex) { 
                    //生成不能點選的首頁和上一頁
            $content.append($("<span>首頁"));
            $content.append($("<span>上一頁"));

                } else {
                    //生成一個首頁和上一頁按鈕
            $content.append(renderButton(RecordCount, 1, pagerClick, "首頁"));
            $content.append(renderButton(RecordCount, prevPageIndex, pagerClick, "上一頁")); 

                }
                //這裡判斷是否顯示頁碼
                if (pagerDefaults.ShowPageNumber) {
                    // var html = ""; 
                    //頁碼部分隱藏 只顯示中間區域 
                    if (endPageIndex <= 5 &;&; PageIndex <= 5) {
                        for (var i = 1; i <= endPageIndex; i++) {
                            if (i == PageIndex) {
                                //生成不可點選的頁碼,也可用於設定樣式,加粗
                                $content.append($("<span>" + i + ""));

                            } else {
                                //生成可點選的頁碼 
                                $content.append(renderButton(RecordCount, i, pagerClick, i)); 
                            }
                        }
                    }
                    //生成< 首頁 上一頁 ...3 4 5 6 7 下一頁 末頁 >格式 
                    else if (endPageIndex > 5 &;&; endPageIndex - PageIndex <= 2) {
                        $content.append($("<a>...</a>"));
                        for (var i = endPageIndex - 4; i <= endPageIndex; i++) {
                            if (i == PageIndex) {
                                $content.append($("<span>" + i + "")); 

                            } else {
                                $content.append(renderButton(RecordCount, i, pagerClick, i)); 
                            } 
                        } 
                    }
                    //生成< 首頁 上一頁 ... 2 3 4 5 6 ... 下一頁 末頁 >格式 
                    else if (endPageIndex > 5 &;&; PageIndex > 3) {
                        $content.append($("<a>...</a>"));
                        for (var i = PageIndex - 2; i <= PageIndex + 2; i++) {
                            if (i == PageIndex) {
                                $content.append($("<span>" + i + ""));

                            } else {
                                $content.append(renderButton(RecordCount, i, pagerClick, i)); 
                            } 
                        }  $content.append($("<a>...</a>"));
                    }
                    //生成< 首頁 上一頁 1 2 3 4 5 ... 下一頁 末頁 >格式
                    else if (endPageIndex > 5 &;&; PageIndex <= 3) {
                        for (var i = 1; i <= 5; i++) {
                            if (i == PageIndex) {
                                $content.append($("<span>" + i + "")); 

                            } else {
                                $content.append(renderButton(RecordCount, i, pagerClick, i)); 
                            } 
                        }  $content.append($("<a>...</a>")); 
                    } 
                }
                //當前頁等於末頁
                if (PageIndex == endPageIndex) {
                    //生成不能點選的下一頁和末頁
                    $content.append($("<span>下一頁"));
                    $content.append($("<span>末頁")); 

                } else {
                    //生成一個下一頁和末頁按鈕
                    $content.append(renderButton(RecordCount, nextPageIndex, pagerClick, "下一頁")); $content.append(renderButton(RecordCount, endPageIndex, pagerClick, "末頁")); 
                }
                //返回生成的分頁
                return $content;
            }
          //生成頁碼
          //引數1:總條目數
          //引數2:指定頁
          //引數3:頁碼按鈕
          //引數4:指定頁文字
          function renderButton(recordCount, goPageIndex, EventHander, text) {
                var $goto = $("<a title=/"第" + goPageIndex + "頁 / ">" + text + "</a>/"");
                  $goto.click(function () {
                      EventHander(recordCount, goPageIndex, pagerDefaults.PageSize); 

                  });
              return $goto; 

            }
            //pagerDefaults變數
            var pagerDefaults = {
                //DefaultPageCount: 1,
                //當前頁 DefaultPageIndex: 1,
                //總條目數 PageSize: 20,
                //是否顯示頁碼
              ShowPageNumber: true
          }; 
        }); 
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
