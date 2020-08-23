<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membermanagment.aspx.cs" Inherits="DriveApp.membermanagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="signUp" class="memberManagement">
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
                                       <h3>Member Menagement</h3>
                                    </center>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <hr>
                                </div>
                            </div>
                             <div class="row">
                                <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                                </div>
                                <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                </div>
                                </div>
                                <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox9" runat="server" placeholder="Account Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fa fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fa fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                                </div>
                            </div>
                            <div class="row">
                               
                                <div class="col-md-3">
                                    <label>Date of Birth</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Phone</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <label>Email</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>
                             </div>
                             <div class="row">
                                  <div class="col-md-4" style="padding-left: 15px !important;">
                                    <label>City</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Zip Code</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>State</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder=""></asp:TextBox>
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
                                  <div class="col-md-4" style="padding-left: 15px !important;">
                                    <label>DL Number</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Insurance</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox12" runat="server" placeholder="" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Policy</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox13" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            
                           
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                       <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Delete User Permanently" OnClick="Button2_Click"  />
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
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carRentalDBConnectionString %>" SelectCommand="SELECT * FROM [customer_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-bordered table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="customer_id" HeaderText="customer_id" ReadOnly="True" SortExpression="customer_id" />
                                            <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                            <asp:BoundField DataField="zip_code" HeaderText="zip_code" SortExpression="zip_code" />
                                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                            <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                            <asp:BoundField DataField="dl_number" HeaderText="dl_number" SortExpression="dl_number" />
                                            <asp:BoundField DataField="insurance" HeaderText="insurance" SortExpression="insurance" />
                                            <asp:BoundField DataField="policy" HeaderText="policy" SortExpression="policy" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                           
                         </div>
                    </div>
                </div>
            </div>
   </div>
     </section>
</asp:Content>
