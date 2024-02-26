<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWebForm1.aspx.cs" Inherits="LoginFormDemo.LoginWebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      table{
          margin:auto;
          border:2px solid yellow;
          width:200px;
      }
        .auto-style2 {
            text-align:center;
        }
        .auto-style3 {
            width: 541px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table >
            <tr>
                <td class="auto-style2" colspan="2"><h3>Login</h3></td>
            </tr>
            <tr>
                <td class="auto-style2">UserName</td>
                <td class="auto-style3">
                    <asp:TextBox ID="UserNameTextBox" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTextBox" Display="Dynamic" ErrorMessage="*Please enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="PassTextBox" runat="server" Width="235px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="*Please enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;<asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" Width="224px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
