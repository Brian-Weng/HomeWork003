<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLeft.ascx.cs" Inherits="HomeWorkWeek3.ucLeft" %>
<style>
    .Menu{
        padding:10px;
        font-size:20px;
        color:white;
    }
    
</style>
<div class="Menu">
    <asp:LinkButton ID="LinkButton1" align="center" runat="server" OnClick="LinkButton1_Click">頁面1</asp:LinkButton>
</div>
<div class="Menu">
    <asp:LinkButton ID="LinkButton2" align="center" runat="server" OnClick="LinkButton2_Click">頁面2</asp:LinkButton>
</div>
<div class="Menu">
    <asp:LinkButton ID="LinkButton3" align="center" runat="server" OnClick="LinkButton3_Click">頁面3</asp:LinkButton>
</div>
