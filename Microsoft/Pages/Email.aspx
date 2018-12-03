<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="Microsoft.Pages.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td style="width: 80px">
            To:
        </td>
        <td>
            <asp:TextBox ID="txtTo" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Subject:
        </td>
        <td>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td valign = "top">
            Body:
        </td>
        <td>
            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" Height = "150" Width = "200"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            File Attachment:
        </td>
        <td>
            <asp:FileUpload ID="fuAttachment" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Gmail Email:
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            Gmail Password:
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode = "Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="sentmail" runat="server" Text="Label" ForeColor="#66FF33"></asp:Label>
        </td>
        <td>
            <asp:Button ID="sendMail" Text="Send" OnClick="SendEmail" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>
