<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_State.aspx.cs" Inherits="ViewState.View_State" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            height: 232px;
        }
        .auto-style2 {
            width: 147px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style2">Username</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
                </td>
                <td>
                    <asp:Button ID="RestoreButton" runat="server" OnClick="RestoreButton_Click" Text="Restore" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
