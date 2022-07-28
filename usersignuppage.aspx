<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignuppage.aspx.cs" Inherits="certifysolution.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      <div class="row">
         <div class="col-md-10 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                                <img width="100px" src="imgs/userlogin1.png" />
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>New User Signup </h4>
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
                        <label>Name&nbsp;&nbsp
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="   (Name Field Reqiured *)" ForeColor="#FF3300"></asp:RequiredFieldValidator>                           
                         </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                       
                       <br />
                        <br />
                       <div class="col-md-6">                    
                        <div class="form-group">                         
                        </div>
                     </div>

                  </div>

                   <div class="row">

                     <div class="col-md-6">

                        <label>Employee ID&nbsp;&nbsp
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="  (Employee ID Field Reqiured *)" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>                           
                        </label>
                        &nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Employee ID"></asp:TextBox>
                        </div>

                     </div>  
             
                       <br />
                       <div class="col-md-6">                    
                        <div class="form-group">                         
                        </div>
                     </div>
                       </div>

      
                    <div class="row">
                     <div class="col-md-6">
                        <label>E - mail ID &nbsp;&nbsp                         
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="  (Email ID Field Reqiured *)" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>                           
                        </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="E-mail Address"  TextMode="Email"></asp:TextBox>
                              <div class="form-group">                         
                        </div>
                        </div>
                     </div>

    <%--                      <div class="col-md-6">

                       <br>
                      <div class="form-group">
                            <asp:Button ID="Button2" class="btn btn-primary"  runat="server" Text="Verify" OnClick="Button2_Click" />
                           
                         
                             <asp:Label ID="Label2" runat="server"></asp:Label>
                        </div>

                     </div>
        --%> 
                  </div>

             <%--   <div class="row">
                     <div class="col-md-6">
                        <label>Enter the OTP </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="4 Digit OTP "  TextMode="Number"></asp:TextBox>
                        </div>
                     </div>


                         <div class="col-md-6">

                       <br>
                        <div class="form-group">
                           
                             <button type="button" class="btn btn-primary">Submit</button>&nbsp;&nbsp;
                             <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>

                     </div>
                  </div>
--%>  
                   <div class="row">
                     <div class="col-md-4">
                        <label>SET Password </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder=""  TextMode=Password></asp:TextBox>
                        </div>
                     </div>


                      <div class="col-md-4">
                           <label>CONFIRM Password </label>
                        <div class="form-group">                          
                             <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder=""  TextMode=Password></asp:TextBox>  
                        </div>
                     </div>
                       <br />
                       <br />
                         <div class="col-md-2">                    
                        <div class="form-group">                         
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="(Password Reqiured *)" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>                           
                       </div>
                     </div>
                       <br>
                       <br />
                       <div class="col-md-2">
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch*" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ForeColor="#FF3300" Display="Dynamic"></asp:CompareValidator>
                         
                        <div class="form-group">                          
                                
                        </div>
                     </div>

                  </div>

 



                  <div class="row">
                     <div class="col">
                                      <%--Register--%>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Verify Email" OnClick="Button1_Click" />
                        </div>
                     </div>

                  </div>
               </div>
          
    </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
