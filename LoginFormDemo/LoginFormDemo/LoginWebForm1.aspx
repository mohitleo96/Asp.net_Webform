<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWebForm1.aspx.cs" Inherits="LoginFormDemo.LoginWebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table{
          margin:auto;
          border:2px solid yellow;
          width:426px;
            height: 392px;
            text-align:center;
        }
        .auto-style2 {
            text-align:center;
        }
        .auto-style3 {
            width: 541px;
        }
        .auto-style4 {
            
            height: 87px;
            width: 160px;
        }
        .auto-style5 {
            width: 541px;
            height: 87px;
        }
      
        .auto-style7 {
            text-align: center;
            width: 160px;
        }
       
        a{
            text-decoration:none;
            border:2px solid black;
           
            
        }
        a:hover{
            background-color:blue;
            color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr>
                <td class="auto-style2" colspan="2"><h3>Login</h3></td>
            </tr>
            <tr>
                <td class="auto-style7">UserName</td>
                <td class="auto-style3">
                    <asp:TextBox ID="UserNameTextBox" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTextBox" Display="Dynamic" ErrorMessage="*Please enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="PassTextBox" runat="server" Width="235px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="*Please enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" Width="184px"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" >
                    <a href="SignUpPage.aspx" >Not register yet? Click Here</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
