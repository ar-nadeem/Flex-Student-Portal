﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Officer/Officer.Master" AutoEventWireup="true" CodeBehind="OfficerHome.aspx.cs" Inherits="Flex.Pages.Officer.OfficerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />  
    <asp:Label ID="UserDetails" runat="server"  CssClass="auto-style1" style="font-size: x-large" ></asp:Label>
    <br />
    <center>OFFICER PROFILE<br />
    </center>
        <asp:GridView ID="StudentDetails" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#A1DCF2"
            HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" HorizontalAlign="Center" >
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="Registration#" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="name" HeaderText="Name" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="DOB" HeaderText="DOB" DataFormatString="{0:d}" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="email" HeaderText="Email" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="phoneno" HeaderText="Phone#" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="cnic" HeaderText="CNIC" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="gender" HeaderText="Gender" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
            </Columns>

<HeaderStyle BackColor="White" ForeColor="Black"></HeaderStyle>

<RowStyle BackColor="Black"></RowStyle>
        </asp:GridView>
      <br /><br /><br /><br />
</asp:Content>
