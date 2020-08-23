<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="car_inventory.aspx.cs" Inherits="DriveApp.car_inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="signUp">
         <div class="container container-form" style="min-width: 90% !important; margin-top: 100px;">
             <div class="row">
                <div class="col-md-4 bg-car">
                    <img src="img/img07.jpg" />
                </div>
                <div class="col-md-8 col-form">
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
                                       <h3>Car Details</h3>
                                    </center>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <hr>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-4" style="padding-left: 0px !important;">
                                    <label>Vehicle ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Make</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Make"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Model Name</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Model"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                 <div class="col-md-4">
                                     <label>VIN Number</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="VIN Number"></asp:TextBox>
                                    </div>
                                 
                                 </div>
                                
                               
                            </div>
                          
                             
                             
                            <div class="row">
                                <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                                <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" />
                                </div>
                                <div class="col-4">
                                <asp:Button ID="Button5" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                                </div>
                            </div>
                                        
                                         
                         </div>
                    </div>
                </div>
             </div>
             <div class="row">
                <div class="col-12 col-form">
                    <div class="card">
                         <div class="card-body">
                              <div class="row">
                                             <div class="col">
                                                <center>
                                                   <img id="imgview" Height="150px" Width="100px" src="img/jeep.png"/>
                                                </center>
                                             </div>
                                          </div>
                            <div class="row">
                                 <div class="col">
                                    <center>
                                       <h3>Rented Cars</h3>
                                    </center>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <hr>
                                </div>
                            </div>
                             <div class="row">
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carRentalDBConnectionString %>" SelectCommand="SELECT * FROM [car_inventory_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="car_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="car_id" HeaderText="car_id" ReadOnly="True" SortExpression="car_id" />
                                            <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
                                            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                                            <asp:BoundField DataField="vin" HeaderText="vin" SortExpression="vin" />
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
