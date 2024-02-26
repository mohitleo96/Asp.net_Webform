<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restore.aspx.cs" Inherits="ViewState.Response" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 372px;
            height: 161px;
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
                    <asp:TextBox ID="RestoreUserTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="PassRestoreTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="RestoreButton" runat="server" OnClick="RestoreButton_Click" Text="Restore" />
                </td>
            </tr>
    </div>
    </form>
           
    </body>
</html>
