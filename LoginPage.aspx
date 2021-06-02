<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HomeWorkWeek3.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .box {
            width: 30%;
            height: 300px;
            position: relative;
            left: 480px;
            top: 180px;
            background-color: dimgray;
        }

        .Account {
            text-align: center;
            color: white;
            padding: 10px;
            padding-top: 50px;
            font-size: 24px;
        }

        .content {
            text-align: center;
            color: white;
            padding: 10px;
            margin: 10px;
            font-size: 24px;
        }

        .btnbox {
            padding: 10px;
            margin: 10px;
            display: flex;
            justify-content: center;
        }

        .item {
            padding: 10px;
            width: 80px;
        }

        .btn {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
        }

        .textPosi {
            position: relative;
            bottom: 3px;
        }

        .ltMassage{
            color:white;
            text-align:center;
        }
    </style>
</head>
<body style="background-color: darkslategray">
    <form id="form1" runat="server">
        <div class="box">           
                <div class="Account">Account:&nbsp&nbsp<asp:TextBox ID="txtAccount" runat="server" class="textPosi"></asp:TextBox></div>
                <div class="content">Password:&nbsp<asp:TextBox ID="txtPwd" runat="server" class="textPosi"></asp:TextBox></div>

                <div class="ltMassage">
                    <asp:Literal ID="ltMassage" runat="server">&nbsp</asp:Literal>
                </div> 

                <div class="btnbox">
                    
                        <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn" OnClick="btnLogin_Click"/>
                    
                        <asp:Button ID="btnCancle" runat="server" Text="Cancle" class="btn" OnClick="btnCancle_Click" />
                </div>
        </div>

    </form>
</body>
</html>
