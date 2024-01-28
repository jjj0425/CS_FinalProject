<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>C# Final Project</title>
</head>
<body>
    <form id="formLogin" runat="server">
        <div>
            <h1>C# Final Project</h1>
            <h2>登入</h2>
            <div>
                <label for="txtUsername">使用者名稱：</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                 <br/><br/>
                <label for="txtPassword">密碼：</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br/><br/>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="登入" OnClick="btnLogin_Click" />
                <asp:Button ID="btnToRegister" runat="server" Text="註冊" OnClick="btnToRegister_Click" />
                <br/><br/>
                <asp:Label ID="lblLoginError" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
