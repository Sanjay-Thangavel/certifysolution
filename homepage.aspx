<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="certifysolution.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">

               
                   <center><b>SELECT YOUR CHOICE : </b></center>
                   <br>

      <%--New USer--%>
                    <div class="row">
                     <div class="col-md-6">
                        <label> New User -[ Sign Up for the First Time ]  </label> &nbsp;&nbsp;
                         <i class="fa-solid fa-arrow-right-long"></i>
                     </div>

                      <div class="col-md-6">
                        <div class="form-group">
                           <a href="usersignuppage.aspx">   <button type="button" class="btn btn-primary">Sign Up</button>  </a>     
                        </div>
                     </div>

                  </div>

    <%--Login--%>
                   <div class="row">
                     <div class="col-md-6">
                        <label> Exsisting User - login  </label>&nbsp;&nbsp;
                         <i class="fa-solid fa-arrow-right-long"></i>
                     </div>

                      <div class="col-md-6">
                        <div class="form-group">
                           <a href="userlogin.aspx"> <button type="button" class="btn btn-primary"> User Login </button> </a>      
                        </div>
                     </div>

                  </div>

      <%--Admin view--%>
                   <div class="row">
                     <div class="col-md-6">
                        <label> Admin View - HR  </label>&nbsp;&nbsp;
                         <i class="fa-solid fa-arrow-right-long"></i>
                     </div>

                      <div class="col-md-6">
                        <div class="form-group">
                          <a href="adminlogin.aspx">    <button type="button" class="btn btn-primary">Admin View</button> </a>      
                        </div>
                     </div>

                  </div>
                 
               </div>
            </div>
           <br>
         </div>
      </div>
   </div>
    <br />
    <br>

</asp:Content>
