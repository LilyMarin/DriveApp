<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="DriveApp.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="signUp">
         <div class="container container-form" style="min-width: 80% !important; margin-top: 100px;">
             <div class="row">
                <div class="col-md-4 bg-car">
                    <img src="img/img-11.jpg" />
                </div>
                <div class="col-md-8 col-form">
                    <div class="card">
                         <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                       <img width="150px" src="img/generaluserR.png"/>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col">
                                    <center>
                                       <h3>Your Profile</h3>
                                       <asp:Label class="badge badge-pill badge-danger" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Date of Birth</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Phone</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Email</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                             </div>
                            <div class="row">
                                  <div class="col-md-4">
                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Zip Code</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>State</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem class="sub opt" Text="select" Value="select" />
                                            <asp:ListItem class="sub" Text="Alabama" Value="Alabama" />
                                            <asp:ListItem class="sub" Text="Alaska" Value="Alaska" />
                                            <asp:ListItem class="sub" Text="Arizona" Value="Arizona" />
                                            <asp:ListItem class="sub" Text="Arkansas" Value="Arkansas" />
                                            <asp:ListItem class="sub" Text="California" Value="California" />
                                            <asp:ListItem class="sub" Text="Colorado" Value="Colorado" />
                                            <asp:ListItem class="sub" Text="Connecticut" Value="Connecticut" />
                                            <asp:ListItem class="sub" Text="Delaware" Value="Delaware" />
                                            <asp:ListItem class="sub" Text="Florida" Value="Florida" />
                                            <asp:ListItem class="sub" Text="Georgia" Value="Georgia" />
                                            <asp:ListItem class="sub" Text="Hawaii" Value="Hawaii" />
                                            <asp:ListItem class="sub" Text="Idaho" Value="Idaho" />
                                            <asp:ListItem class="sub" Text="Illinois" Value="Illinois" />
                                            <asp:ListItem class="sub" Text="Indiana" Value="Indiana" />
                                            <asp:ListItem class="sub" Text="Iowa" Value="Iowa" />
                                            <asp:ListItem class="sub" Text="Kansas" Value="Kansas" />
                                            <asp:ListItem class="sub" Text="Kentucky" Value="Kentucky" />
                                            <asp:ListItem class="sub" Text="Louisiana" Value="Louisiana" />
                                            <asp:ListItem class="sub" Text="Maine" Value="Maine" />
                                            <asp:ListItem class="sub" Text="Maryland" Value="Maryland" />
                                            <asp:ListItem class="sub" Text="Massachusetts" Value="Massachusetts" />
                                            <asp:ListItem class="sub" Text="Michigan" Value="Michigan" />
                                            <asp:ListItem class="sub" Text="Minnesota" Value="Minnesota" />
                                            <asp:ListItem class="sub" Text="Mississippi" Value="Mississippi" />
                                            <asp:ListItem class="sub" Text="Missouri" Value="Missouri" />
                                            <asp:ListItem class="sub" Text="Montana" Value="Montana" />
                                            <asp:ListItem class="sub" Text="Nebraska" Value="Nebraska" />
                                            <asp:ListItem class="sub" Text="Nevada" Value="Nevada" />
                                            <asp:ListItem class="sub" Text="New Hampshire" Value="New Hampshire" />
                                            <asp:ListItem class="sub" Text="New Jersey" Value="New Jersey" />
                                            <asp:ListItem class="sub" Text="New Mexico" Value="New Mexico" />
                                            <asp:ListItem class="sub" Text="New York" Value="New York" />
                                            <asp:ListItem class="sub" Text="North Carolina" Value="North Carolina" />
                                            <asp:ListItem class="sub" Text="North Dakota" Value="North Dakota" />
                                            <asp:ListItem class="sub" Text="Ohio" Value="Ohio" />
                                            <asp:ListItem class="sub" Text="Oklahoma" Value="Oklahoma" />
                                            <asp:ListItem class="sub" Text="Oregon" Value="Oregon" />
                                            <asp:ListItem class="sub" Text="Pennsylvania" Value="Pennsylvania" />
                                            <asp:ListItem class="sub" Text="Rhode Island[" Value="Rhode Island[" />
                                            <asp:ListItem class="sub" Text="South Carolina" Value="South Carolina" />
                                            <asp:ListItem class="sub" Text="South Dakota" Value="South Dakota" />
                                            <asp:ListItem class="sub" Text="Tennessee" Value="Tennessee" />
                                            <asp:ListItem class="sub" Text="Texas" Value="Texas" />
                                            <asp:ListItem class="sub" Text="Utah" Value="Utah" />
                                            <asp:ListItem class="sub" Text="West Bengal" Value="West Bengal" />
                                            <asp:ListItem class="sub" Text="Vermont" Value="Vermont" />
                                            <asp:ListItem class="sub" Text="Virginia" Value="Virginia" />
                                            <asp:ListItem class="sub" Text="Washington" Value="Washington" />
                                            <asp:ListItem class="sub" Text="West Virginia" Value="West Virginia" />
                                            <asp:ListItem class="sub" Text="Wisconsin" Value="Wisconsin" />
                                            <asp:ListItem class="sub" Text="Wyoming" Value="Wyoming" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <center>
                                    <h5>Login Credentials</h5>
                                </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Update"  />
                                    </div>
                                </div>
                               
                             </div>
                         </div>
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-md-12 col-form">
                    <div class="card">
                         <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                       <img width="150px" src="img/jeep.png"/>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col">
                                    <center>
                                       <h3>Past Rentals</h3>
                                    </center>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <hr>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col">
                                    <asp:GridView class="table table-bordered table-striped" ID="GridView1" runat="server"></asp:GridView>
                                </div>
                            </div>
                           
                         </div>
                    </div>
                </div>
            </div>
        </div>
     </section>
</asp:Content>
