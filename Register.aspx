<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalProject.Register" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>註冊</title>
</head>
<body>
    <form id="formRegister" runat="server">
        <div>
            <h2>註冊</h2>
            <div>
                <label for="txtUsername">使用者名稱：</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <br/><br/>
                <label for="txtPassword">密碼：</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <br/><br/>
                <label for="txtConfirmPassword">確認密碼：</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br/><br/>
            </div>
            <div>
                <asp:Button ID="btnRegister" runat="server" Text="註冊" OnClick="btnRegister_Click" />
                <asp:Label ID="lblRegisterError" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
