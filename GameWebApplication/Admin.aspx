<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GameWebApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>ADMIN VIEW PAGE</h2>
    
    

    
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectionString %>" SelectCommand="SELECT * FROM [Pokemon]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TrainerID" DataSourceID="SqlDataSource1" Width="878px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="TrainerID" HeaderText="TrainerID" ReadOnly="True" SortExpression="TrainerID" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="PokedexCount" HeaderText="PokedexCount" SortExpression="PokedexCount" />
                <asp:BoundField DataField="TrainerLevel" HeaderText="TrainerLevel" SortExpression="TrainerLevel" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="PokemonBuddy" HeaderText="PokemonBuddy" SortExpression="PokemonBuddy" />
            </Columns>
        </asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
    
    

    
</asp:Content>
