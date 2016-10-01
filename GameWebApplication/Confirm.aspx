<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="GameWebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>FORM CONFIRMATION</h2>
    <h3>Please read the following details you have provided and pr
        ess &quot;confirm&quot; to submit or &quot;cancel&quot; to go back to previous page.&nbsp; </h3>

    <table style="width:100%;">
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CName" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="NameDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CTID" runat="server" Text="Trainer ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="TIDDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CAge" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
                <asp:Label ID="AgeDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:Label ID="GenderDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CCountry" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:Label ID="CountryDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CUserName" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="UserNameDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CPwd" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:Label ID="PwdDisplay" runat="server" Text="Label"></asp:Label>
                </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CPokedexCount" runat="server" Text="Pokedex Count"></asp:Label>
            </td>
            <td>
                <asp:Label ID="PokedexDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CTrainerLevel" runat="server" Text="Trainer Level"></asp:Label>
            </td>
            <td>
                <asp:Label ID="TLDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CTeam" runat="server" Text="Team"></asp:Label>
            </td>
            <td>
                <asp:Label ID="TeamDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td style="width: 190px">
                <asp:Label ID="CPokeBuddy" runat="server" Text="Pokemon Buddy"></asp:Label>
            </td>
            <td>
                <asp:Label ID="PBDisplay" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        </table>

    &nbsp;<asp:Button ID="Confirm" runat="server" OnClick="Confirm_Click" Text="CONIRM" />
    <asp:Button ID="btnPrevPage" runat="server" OnClick="btnPrevPage_Click" Text="Previous Page" />


    </asp:Content>
