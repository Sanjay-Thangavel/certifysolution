<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminview.aspx.cs" Inherits="certifysolution.adminview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
   </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:certifydbConnectionString %>" SelectCommand="SELECT * FROM [certificate]"></asp:SqlDataSource>

      <div class="row">
         <div class="col-md-6 mx-auto">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="employee_id" HeaderText="employee_id" SortExpression="employee_id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                <asp:BoundField DataField="from_d" HeaderText="from_d" SortExpression="from_d" />
                                <asp:BoundField DataField="to_d" HeaderText="to_d" SortExpression="to_d" />
                                <asp:BoundField DataField="today" HeaderText="today" SortExpression="today" />
                                <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                            </Columns>
                        </asp:GridView>
             <center>
                 <asp:Button Class="btn btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="Export In Excel" /> 
             </center>
               
            </div>
        </div>
    </div>

</asp:Content>
