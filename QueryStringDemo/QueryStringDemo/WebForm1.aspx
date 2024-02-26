<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QueryStringDemo.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 62%;
            height: 225px;
        }
        .auto-style2 {
            width: 218px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 321px; width: 895px">
    
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style2">Student Id</td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" Width="231px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Student Name</td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Width="228px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Student Age</td>
                <td>
                    <asp:TextBox ID="AgeTextBox" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="SentButton" runat="server" OnClick="SentButton_Click" Text="Sent" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
