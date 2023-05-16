<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentFee.aspx.cs" Inherits="Flex.Pages.Student.StudentFee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



    <br />
    <br />
    <div class="center">



        <h3><strong>Fee Challan</strong></h3>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" BorderColor="Black" BorderStyle="Solid"  CellPadding="5"  CellSpacing="0" >
            <asp:TableHeaderRow  BackColor="Red">
                <asp:TableHeaderCell BorderColor="White" BorderStyle="Solid">
                   #of Courses Registered
                </asp:TableHeaderCell>
                <asp:TableHeaderCell BorderColor="White" BorderStyle="Solid">
                   Fee Per Course/Rs.
                </asp:TableHeaderCell>
                <asp:TableHeaderCell  BorderColor="White" BorderStyle="Solid">
                   Total Fee Payable/Rs.
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow BorderColor="White" BorderStyle="Solid">
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    <asp:Label ID="Num_of_couses" runat="server"></asp:Label>

                </asp:TableCell>
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    7500Rs.

                </asp:TableCell>
                 <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    <asp:Label ID="Total_Payable" runat="server"></asp:Label>

               </asp:TableCell>

            </asp:TableRow>

        </asp:Table>




    </div>
    <br />
    <br />
</asp:Content>
