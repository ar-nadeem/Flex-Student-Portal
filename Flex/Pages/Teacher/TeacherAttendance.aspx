﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="TeacherAttendance.aspx.cs" Inherits="Flex.Pages.Teacher.TeacherAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <center>
        <strong><h2>&nbsp;TEACHER ATTENDANCE</h2>
        </strong></center>
     
      <div class="center">
          <asp:Label ID="Error_no_course" runat="server" Text="Teacher must be registered in at least ONE course to view attendance" ForeColor="Red" ></asp:Label>

      </div>
    <div>
        <asp:GridView ID="CurrentCourses" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#A1DCF2"
            HeaderStyle-BackColor="White" HeaderStyle-ForeColor="Black" HorizontalAlign="Center" >
            <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="courseid" HeaderText="CourseID" >
            <ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-Width="150px" DataField="Coursename" HeaderText="CourseName" >
            <ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            </asp:BoundField>
                <asp:TemplateField AccessibleHeaderText="Select">
                    <HeaderTemplate>
                       Select

                    </HeaderTemplate>
                    <ItemTemplate >
                        <asp:RadioButton runat="server"   ID="AttendanceSelected" AutoPostBack="true" OnCheckedChanged="AttendanceSelected_CheckedChanged"/>
                    </ItemTemplate>
                </asp:TemplateField>

                        </Columns>
<HeaderStyle BackColor="White" ForeColor="Black"></HeaderStyle>

<RowStyle BackColor="Black"></RowStyle>
        </asp:GridView>
      </div>    



    <br />
       <div class="center">
        <asp:Label ID="lblErrorMessage" runat="server" Text="Attendance of this course is yet to be updated" ForeColor="Red" ></asp:Label>
    </div>    
    <div>
        <asp:GridView ID="TeacherDetails" Caption="ATTENDANCE OF THIS COURSE" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#A1DCF2"
            HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" HorizontalAlign="Center" >
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="courseid" HeaderText="CourseID" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="date" HeaderText="Date"  DataFormatString="{0:d}">
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="150px" DataField="status" HeaderText="Status" >
<ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
            </Columns>
<HeaderStyle BackColor="White" ForeColor="Black"></HeaderStyle>

<RowStyle BackColor="Black"></RowStyle>
        </asp:GridView>



   
    </div>

    <div class="center">
        <br />
        <asp:Label ID="AttendPercentage" runat="server"  BorderColor="#0000ff" BorderStyle="Dotted" BackColor="#33ccff" ForeColor="white"  Font-Size="Large"></asp:Label>

    </div>


    <br />
    <br />
    <br />
    <br />
    <br />
    

</asp:Content>
