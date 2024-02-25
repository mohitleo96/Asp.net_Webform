<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvenNumber.aspx.cs" Inherits="RequiredValidation.EvenNumber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
          width: 100%;
        }
        .auto-style2 {
          width: 237px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter Number" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter any Even Number" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Even Number</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
