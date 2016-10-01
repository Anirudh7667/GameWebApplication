<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GameWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #FF0000; text-decoration: underline; background-color: #C0C0C0; text-align: center">POKEMON TRAINER REGISTRATION FORM</h1>
        
        <table style="width:100%; height: 1145px; margin-top: 0px;">
            <tr>
                <td style="width: 188px">Name</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is a Required Field" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 188px">Trainer ID</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Trainer ID is a Required Field and Should be a number" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 188px">Age</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be above 5" MaximumValue="140" Type="Integer" ControlToValidate="TextBox3" MinimumValue="5"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Age is a Required Field" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td style="width: 188px">Gender</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is a Required Field" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="width: 188px">Country</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Country is a Required Field" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="width: 188px">Desired User Name</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="User Name is a Required Field" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="height: 46px; width: 188px">Password</td>
                <td style="height: 46px; width: 286px">
                    <asp:TextBox ID="Password1" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                <td style="height: 46px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is a Required Field" ControlToValidate="Password1"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="width: 188px">Pokedex Count</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Pokedex Count is a Required Field" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="width: 188px">Trainer Level</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Trainer Level is a Required Field" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="width: 188px">Team</td>
                <td style="width: 286px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="169px">
                        <asp:ListItem>NO TEAM ASSIGNED</asp:ListItem>
                        <asp:ListItem>VALOR</asp:ListItem>
                        <asp:ListItem>INSTINCT</asp:ListItem>
                        <asp:ListItem>MYSTIC</asp:ListItem>
                    </asp:DropDownList>
                 </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td style="width: 188px">Pokemon Buddy</td>
                <td style="width: 286px">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                 </td>
                <td>
                   </td> 
                    
            </tr>
            
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GameConnectionString %>" SelectCommand="SELECT * FROM [Pokemon]"></asp:SqlDataSource>
        <input id="Reset1" type="reset" value="RESET" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
    </div>

    
</asp:Content>
