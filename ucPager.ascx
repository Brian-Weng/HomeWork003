<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPager.ascx.cs" Inherits="HomeWorkWeek3.ucPager" %>
<style>
    .pagerA a{
        color:blue;
    }
</style>
<div class="pagerA">
    <a runat="server" id="aLinkFirst" href="#">First</a>

    <asp:PlaceHolder ID="plc1" runat="server"></asp:PlaceHolder>
    <%--<a runat="server" id="aPage1" href="#">1</a>
    <a runat="server" id="aPage2" href="#">2</a>
    <a runat="server" id="aPage3" href="#">3</a>--%>

    <a runat="server" id="aLinkLast" href="#">Last</a>
</div>
<div>
    <asp:Literal ID="ltCurrentPage" runat="server"></asp:Literal> /
    <asp:Literal ID="ltTotalPage" runat="server"></asp:Literal>
</div>