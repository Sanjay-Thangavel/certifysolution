<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="certifysolution.userview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                                <img width="80px" src="imgs/certifcate.jpg" />  
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Apply for Certificate</h4>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>


                   <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" Readonly="True"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        
                         <label>Employee ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Employee ID" Readonly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   <div class="row">
                     <div class="col-md-4">
                        <label>Certificate</label>
                         &nbsp;&nbsp
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="  ( Certificate Field Reqiured *)" ForeColor="#FF3300" Display="Dynamic" InitialValue="--Select--" SetFocusOnError="True"></asp:RequiredFieldValidator>                           
                          
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                               <asp:ListItem Text="--Select--" Value="Select" />
                              <asp:ListItem Text="Experience Certificate" Value="Experience Certificate" />
                              <asp:ListItem Text="Traniee Certificate" Value="Traniee Certificate" />
                              <asp:ListItem Text="Internship Certificate" Value="Internship Certificate" />                              
                           </asp:DropDownList>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>From Date&nbsp;&nbsp
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="  (From Date Field Reqiured *)" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>                           
                          </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>                       
                     </div>
                     
                       <div class="col-md-4">
                        <label>To Date&nbsp;&nbsp
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="  (To Date Field Reqiured *)" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>                           
                         </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>                       
                     </div>
             </div>

                   <div class="row">
                     <div class="col-md-5">
                        <label>Requesting Date (Today)</label>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                     </div>
                       
                       <label> Registered Email ID : </label>
                        <div class="form-group">
                           &nbsp
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </div>
                  </div>                     

                  <div class="row">
                     <div class="col-6 mx-auto">
                                      <%--SUBMIT--%>
                         <centre>      
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </div>
                         </centre>
                     </div>
                  </div>
             
                   </div>
            </div>
             <a href="loginview.aspx"><< Previous</a><br>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>

</asp:Content>
