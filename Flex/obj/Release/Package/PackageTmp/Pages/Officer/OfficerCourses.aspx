<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Officer/Officer.Master" AutoEventWireup="true" CodeBehind="OfficerCourses.aspx.cs" Inherits="Flex.Pages.Officer.DirectorCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <center><h2><strong>List of Courses  in UMS</strong></h2></center>

     <asp:GridView ID="DepartmentDetails" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#A1DCF2"
            HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" HorizontalAlign="Center" >
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="courseid" HeaderText="Course ID" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="coursename" HeaderText=" Course Name" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>

              
                <asp:TemplateField AccessibleHeaderText="Select Department" ItemStyle-HorizontalAlign="center" >
                   <HeaderTemplate>
                       Select Courses

                    </HeaderTemplate>
                    <ItemTemplate>
                        
                        <asp:CheckBox ID="Mark_Student" runat="server" OnCheckedChanged="Mark_Student_CheckedChanged" />
                    </ItemTemplate>

                                    </asp:TemplateField>
      
                </Columns>
<HeaderStyle BackColor="White" ForeColor="Black"></HeaderStyle>

<RowStyle BackColor="Black"></RowStyle>
        </asp:GridView>


<%--    Button to remove will come here--%>
    <div class="center">

        <br />
    <asp:Button ID="UnEnroll" CssClass="button btn-danger" runat="server" Text="Remove" style="height: 60px" OnClick="UnEnroll_Click" />
    <br /><br />
         <asp:Table ID="Enroll" runat="server" HorizontalAlign="Center" BorderColor="Black" BorderStyle="Solid"  CellPadding="5"  CellSpacing="0" >
            <asp:TableHeaderRow  BackColor="Red">
                <asp:TableHeaderCell BorderColor="Black" BorderStyle="Solid">
                  Course No
                </asp:TableHeaderCell>
                <asp:TableHeaderCell BorderColor="Black" BorderStyle="Solid">
                 Cousre Name
                </asp:TableHeaderCell>
                
            </asp:TableHeaderRow>
           
             <asp:TableRow BorderColor="Black" BorderStyle="Solid">
                <asp:TableCell BorderColor="Black" BackColor="White" BorderStyle="Solid">
                    <asp:Label ID="RegistrationNumber" runat="server"></asp:Label>
                    <asp:TextBox ID="RegNotxt" runat="server"  ></asp:TextBox>
                </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BackColor="White" BorderStyle="Solid">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:TextBox ID="Name" runat="server"  ></asp:TextBox>
                </asp:TableCell>
                  
              
    </asp:TableRow>
             
                 




                

        </asp:Table>


          <asp:Label ID="Error_1" runat="server"  ForeColor="Red" ></asp:Label>

          <br />
          <br />
    <asp:Button ID="Enroll_Butt" CssClass="button btn-success" runat="server" Text="Add" style="height: 60px" OnClick="Enroll_Butt_Click" />

        </div>
</asp:Content>
