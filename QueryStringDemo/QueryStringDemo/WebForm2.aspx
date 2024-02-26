<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="QueryStringDemo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 46%;
            height: 210px;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style3 {
            width: 180px;
        }
        .auto-style4 {
            height: 69px;
            width: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Student Id</td>
                <td>
                    <asp:TextBox ID="IDTextBoxWF2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Student Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="NameTextBoxWF2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Student Age</td>
                <td>
                    <asp:TextBox ID="AgeTextBoxWF2" runat="server"></asp:TextBox>
                    <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
