<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginview.aspx.cs" Inherits="certifysolution.loginview" %>
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
                           <h4>
                               <asp:Label ID="Label2" runat="server" ForeColor="#3399FF" Text="User Account :"></asp:Label>
                            </h4>
                            <h4>Hello
                                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                            </h4><br />
                            <h5>SELECT OPTIONS&nbsp; :</h5>
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
                        &nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="101px" ImageUrl="~/imgs/userlogin1.png" OnClick="ImageButton1_Click" Width="148px" /> 
                        <br />&nbsp;  <label><b>View / Edit Profile </b></label>
                        <div class="form-group">             
                        </div>
                     </div>

                         <div class="col-md-6">
                        <div class="form-group">
                           
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="101px" ImageUrl="~/imgs/certifcate.jpg" Width="148px" OnClick="ImageButton2_Click" />
                            <br /><label><b>Apply for Certificate !</b></label>
                         
                             
                        </div>

                     </div>

                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                  </div>
                       
</asp:Content>
