<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HomeWorkWeek3.WebForm1" %>

<%@ Register Src="~/ucPager.ascx" TagPrefix="uc1" TagName="ucPager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            text-align:center;
            width:600px;border:1px solid #888888;
            border-collapse:collapse;
        }
        td{
            border:1px solid #888888;padding:10px;
        }
        th{
            padding:10px;
        }
        tr:nth-child(1){
            
            background-color:#7788aa;
            color:#ffffff;
        }
        tr:nth-child(even){
            background-color:#e8e8e8;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding:15px">
    <h2>&nbsp頁面一</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Birthday</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %> </td>
                    <td><%# Eval("Name") %> </td>
                    <td><%# Eval("Birthday", "{0: yyyy-MM-dd}") %> </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div>
        <uc1:ucPager runat="server" ID="ucPager" PagingSize="10" SType="Inner"/>
    </div>
</div>
</asp:Content>

