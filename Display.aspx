<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="FinalProject.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Display Page</title>
</head>
<body>
    <form id="formDisplay" runat="server">
        <div>
            <asp:EntityDataSource runat="server"></asp:EntityDataSource>
            
            
            
            <asp:Label ID="lblOut" runat="server" Text=""></asp:Label>
            <asp:Button ID="SignOut" runat="server" Text="登出" OnClick="SignOut_Click" />
            <br /><br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="Model1"></asp:DetailsView>
            <br />
            <asp:GridView ID="gvGroupData" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="MemberName" HeaderText="成員名稱" />
                    <asp:BoundField DataField="Location" HeaderText="地點" />
                    <asp:BoundField DataField="Current" HeaderText="當前進度" />
                    <asp:BoundField DataField="Target" HeaderText="目標總數" />
                    <asp:BoundField DataField="Progress" HeaderText="進度百分比" />
                    <asp:BoundField DataField="Remarks" HeaderText="備註" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
