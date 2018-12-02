<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Microsoft.Pages.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height: 282px">
        <tr>
            <td style="width: 627px">
                Name</td>
             <td style="width: 636px">
                 <asp:TextBox ID="txtName" runat="server" Width="128px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 627px">
                Password</td>
             <td style="width: 636px">
                 <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 627px">
                Confirm Password</td>
             <td style="width: 636px">
                 <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 627px">
                Email</td>
             <td style="width: 636px">
                 <asp:TextBox ID="txtEmail" runat="server" Width="145px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 627px">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Width="114px" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirm" ControlToValidate="txtPassword" ErrorMessage="Password Must Match"></asp:CompareValidator>
                <br />
            </td>
            <td style="width: 627px">
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
