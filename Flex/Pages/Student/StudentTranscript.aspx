<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentTranscript.aspx.cs" Inherits="Flex.Pages.Student.StudentTranscript" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    
    <div class="center">    
    <h3><strong> Transcript</strong></h3>
    
    <asp:Label ID="lblErrorMessage" runat="server" Text="No Transcipt Data Available" ForeColor="Red" ></asp:Label>
     
    <asp:GridView ID="Transcript" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="Black"
            HeaderStyle-BackColor="White" HeaderStyle-ForeColor="Black" HorizontalAlign="Center" >
            <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="courseid" HeaderText="CourseID" >
            <ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            </asp:BoundField>
                            
                            <asp:BoundField ItemStyle-Width="150px" DataField="obtainedmarks" HeaderText="ObtainedMarks" >
            <ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            </asp:BoundField>
                    <asp:BoundField ItemStyle-Width="150px" DataField="totalMarks" HeaderText="TotalMarks" >
            <ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                            </asp:BoundField>

                    <asp:BoundField ItemStyle-Width="150px"  HeaderText="Grade Given" >
            <ItemStyle Width="150px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>

                            </asp:BoundField>



                        </Columns>
<HeaderStyle BackColor="White" ForeColor="Black"></HeaderStyle>

<RowStyle BackColor="Black"></RowStyle>
        </asp:GridView>




        <div class="center">
            <br />

            <asp:Label ID="CGPA" Text="" runat="server" />
       
            <br />
              <h3><strong>Grading Criteria</strong></h3>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" BorderColor="Black" BorderStyle="Solid"  CellPadding="5"  CellSpacing="0" >
            <asp:TableHeaderRow  BackColor="Red">
                <asp:TableHeaderCell BorderColor="White" BorderStyle="Solid">
                   Grade
                </asp:TableHeaderCell>
                <asp:TableHeaderCell BorderColor="White" BorderStyle="Solid">
                  %age Marks Required
                </asp:TableHeaderCell>
                
            </asp:TableHeaderRow>
            <asp:TableRow BorderColor="White" BorderStyle="Solid">
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    A
                </asp:TableCell>
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    Obtained Marks >= 80% 

                </asp:TableCell>
                
            </asp:TableRow>

              <asp:TableRow BorderColor="White" BorderStyle="Solid">
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    B
                </asp:TableCell>
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                   Obtained Marks >= 70% AND Obtained Marks < 80%

                </asp:TableCell>
                
            </asp:TableRow>
                <asp:TableRow BorderColor="White" BorderStyle="Solid">
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    C
                </asp:TableCell>
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                   Obtained Marks >= 60% AND Obtained Marks < 70%

                </asp:TableCell>
                
            </asp:TableRow>

            
                <asp:TableRow BorderColor="White" BorderStyle="Solid">
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    D
                </asp:TableCell>
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                   Obtained Marks >= 50% AND Obtained Marks < 60%

                </asp:TableCell>
                
            </asp:TableRow>

            
                <asp:TableRow BorderColor="White" BorderStyle="Solid">
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                    F
                </asp:TableCell>
                <asp:TableCell BorderColor="White" BackColor="Black" BorderStyle="Solid">
                   Obtained Marks < 50% 

                </asp:TableCell>
                
            </asp:TableRow>

        </asp:Table>



        </div>
    
    
    </div>
    <br />
    <br />
    <br />
   
</asp:Content>
