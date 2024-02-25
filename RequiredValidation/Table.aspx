<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="RequiredValidation.Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
          height: 378px;
        }
        .auto-style2 {
        }
        .auto-style3 {
          width: 178px;
        }
        .auto-style4 {
          width: 149px;
        }
        .auto-style5 {
          width: 149px;
          height: 44px;
        }
        .auto-style6 {
          width: 178px;
          height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Student Details</h2>
       
    </div>
    <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
        <tr>
            <th class="auto-style2" colspan="2">Student Data</th>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#999999" Font-Size="Large" Font-Strikeout="False" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Student&nbsp; Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="Please enter name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Student email</td>
            <td class="auto-style3">
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Please enter correct gmail" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" Display="Dynamic" ErrorMessage="Enter Correct Email with @" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Re-enter email</td>
            <td class="auto-style3">
                <asp:TextBox ID="ReenterTextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ReenterTextBox3" ErrorMessage="Please enter correct gmail" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="emailTextBox" ControlToValidate="ReenterTextBox3" Display="Dynamic" ErrorMessage="Email is not match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Class</td>
            <td class="auto-style6">
                <asp:TextBox ID="classTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="classTextBox" ErrorMessage="Please fill the Class" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="classTextBox" Display="Dynamic" ErrorMessage="Please select between 1-12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Fees</td>
            <td class="auto-style6">
                <asp:TextBox ID="FeesTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FeesTextBox" ErrorMessage="Please Enter Fees" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="Select between 1000.34-6000.25" ForeColor="Red" MaximumValue="6000.25" MinimumValue="1000.34" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Gender</td>
            <td class="auto-style6">
                <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="GenderGroup" Text="Male" />
                <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="GenderGroup" Text="Female" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Select Gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
