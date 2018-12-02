<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Microsoft.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table style="width: 435px; height: 206px">
        <tr>
             <td style="width: 199px">

                 Login</td>
            <td>

                <asp:TextBox ID="txtLogin" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLogin" ErrorMessage="*"></asp:RequiredFieldValidator>
                
             </td>
        </tr>
          <tr>
             <td style="width: 199px; height: 57px;">

                 Password</td>
            <td style="height: 57px">

                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>

             </td>
        </tr>
          <tr>
             <td style="width: 199px">

                 <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

             </td>
          
        </tr>
        
         <tr>
             <td style="width: 199px">

                 <asp:Label ID="lblError" runat="server"></asp:Label>

             </td>
         </tr>
      
    </table>

    <asp:Button ID="registerbtn" runat="server" Text="Register" OnClick="btnRegister_Click" style="margin-bottom: 0px" CausesValidation="False"/>

</asp:Content>
