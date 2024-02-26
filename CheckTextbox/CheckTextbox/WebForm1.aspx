<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CheckTextbox.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 103px;
        }
    </style>
    <script type="text/javascript">
        function ShowPassword(checkBox)
        {
            var passwordshow = document.getElementById('TextBox1');
            if(checkBox.checked == true)
            {
                passwordshow.setAttribute("type", "text");
            }
            else
            {
                passwordshow.setAttribute("type", "password");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                    <input type="checkbox" onclick="ShowPassword(this)"/>
                    Show Password
                </td>
            </tr>
            </table>
    <div>
    
    </div>
    </form>
</body>
</html>
