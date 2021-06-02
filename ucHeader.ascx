<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="HomeWorkWeek3.ucHeader" %>
<!--LOGO-->
<style>
    a{
        color:white;
        text-decoration:none;
    }
    .leftdiv{
        text-align:center;
        width:20%;
        background-color:#363232;
    }
    .rightdiv{        
        text-align:right;
        width:80%; 
        padding:20px;
        background-color:#363232;
    }
    .rightdiv2{
        text-align:right;
        width:80%; 
        padding:5px;
        background-color:#363232;
    }
    .logoimg{
        position:relative;top:10px;
        width:30px;
        height:45px;
    }
    .sitename{
        font-weight:bold;
        font-size:40px;
        font-style:italic;
        color:white;
    }
    .ltral{
        color:white;
        font-size:16px;
        font-weight:bold;
        position:relative;bottom:3px;
    }

</style>

    <div class="leftdiv">
        <a href="HomePage.aspx">
            <img src="images/w3lynx_200.jpg" class="logoimg"/>
        </a>
        <a href="HomePage.aspx">
            <span class="sitename">UUUBAY</span>
        </a>
    </div>
    <div class="rightdiv">
        <asp:PlaceHolder ID="plc1" runat="server">
            <a href="LoginPage.aspx">
                登入
            </a>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="plc2" runat="server" Visible="false">
            <span class="ltral">Hi,<asp:Literal ID="ltAccount" runat="server"></asp:Literal></span><br />
            <asp:Button ID="btnLogout" runat="server" Text="登出" OnClick="btnLogout_Click"/>
        </asp:PlaceHolder>
    </div>

