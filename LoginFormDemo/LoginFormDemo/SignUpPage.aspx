<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="LoginFormDemo.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            height: 471px;
            border: 2px solid #000000;
            background-color: #C0C0C0;
            margin:auto
        }
        .auto-style2 {
            height: 46px;
            width: 286px;
        }
        .auto-style3 {
            height: 46px;
            width: 219px;
        }
        .auto-style4 {
            width: 219px;
        }
        .auto-style5 {
            width: 286px;
        }
        .auto-style6 {
            width: 72%;
            height: 433px;
            margin:auto;
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
    
        <table cellpadding="2" cellspacing="3" class="auto-style1">
            <tr>
                <td colspan="2" style="text-align:center"><h2>SignUp</h2></td>
            </tr>
            <tr>
                <td class="auto-style3">First Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="FNTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FNRequiredFieldValidator1" runat="server" ControlToValidate="FNTextBox" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="LNTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LNRequiredFieldValidator2" runat="server" ControlToValidate="LNTextBox" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gender</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="GenderDropDownList" runat="server" Height="28px" Width="220px">
                         <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                       
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="GenderDropDownList" Display="Dynamic" ErrorMessage="Please Select Gender" ForeColor="Red" SetFocusOnError="True" InitialValue="Select">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="EmailTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Select Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email is Not Valid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td class="auto-style5">
                    <asp:TextBox ID="AddressTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator5" runat="server" ControlToValidate="AddressTextBox" Display="Dynamic" ErrorMessage="Please Enter Correct Address" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">UserName</td>
                <td class="auto-style5">
                    <asp:TextBox ID="UsernameTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UsernameRequiredFieldValidator6" runat="server" ControlToValidate="UsernameTextBox" Display="Dynamic" ErrorMessage="Please Enter UserName" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="passTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PassRequiredFieldValidator7" runat="server" ControlToValidate="passTextBox" Display="Dynamic" ErrorMessage="Please Enter valid Password HavingUpper case,LowerCase,Number and Symbol" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PassRegularExpressionValidator1" runat="server" ControlToValidate="passTextBox" Display="Dynamic" ErrorMessage="Passwoed Should Have UpperCase,LowerCase,Number and Symbol" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="confpassTextBox" runat="server" BorderStyle="Dotted" Width="219px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConPassRequiredFieldValidator8" runat="server" ControlToValidate="confpassTextBox" Display="Dynamic" ErrorMessage="Password is not Identical" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ConfirmpassCompareValidator1" runat="server" ControlToCompare="passTextBox" ControlToValidate="confpassTextBox" Display="Dynamic" ErrorMessage="ConfirmPassword should be same" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="SignUpButton" runat="server" Text="SignUp" OnClick="SignUpButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <a href="LoginWebForm1.aspx">Go To Login Page</td>
            </tr>
        </table>
    
        <table class="auto-style6">
            <tr>
                <td style="padding-top:2px">
                    <asp:ValidationSummary ID="SignUpValidationSummary1" runat="server" ForeColor="Red" Height="432px" Width="700px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
