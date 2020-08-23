<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="carinventory.aspx.cs" Inherits="DriveApp.carinventory" %>
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
                                <div class="col">
                                <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4" style="padding-left: 0px !important;">
                                    <label>Vehicle ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Make</label>
                                    <div class="form-group">
                                       <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">
                                          <asp:ListItem Text="Make 1" Value="Make 1" />
                                          <asp:ListItem Text="Make 2" Value="Make 2" />
                                       </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Model Name</label>
                                    <div class="form-group">
                                       <asp:DropDownList class="form-control" ID="DropDownList5" runat="server">
                                          <asp:ListItem Text="Model 1" Value="m1" />
                                          <asp:ListItem Text="Model 2" Value="m2" />
                                       </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                 <div class="col-md-4">
                                    <label>Year</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Year"></asp:TextBox>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <label>Interior Color</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Interior Color"></asp:TextBox>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <label>Exterior Color</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Exterior Color"></asp:TextBox>
                                    </div>
                                 </div>
                              </div>
                            <div class="row">
                                 <div class="col-md-4">
                                     <label>VIN Number</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="VIN Number"></asp:TextBox>
                                    </div>
                                    <label>Car Mileage</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Car Mileage"></asp:TextBox>
                                    </div>
                                     <label>Doors</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Car Mileage"></asp:TextBox>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <label>Engine</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Engine"></asp:TextBox>
                                    </div>
                                    <label>Transmission</label>
                                     <div class="form-group">
                                       <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                          <asp:ListItem Text="Authomatic" Value="Authomatic" />
                                          <asp:ListItem Text="Manual" Value="Manual" />
                                       </asp:DropDownList>
                                    </div>
                                     <label>Seat Numbers</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Car Mileage"></asp:TextBox>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <label>Amenities</label>
                                    <div class="form-group">
                                       <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                          <asp:ListItem Text="AC" Value="AC" />
                                          <asp:ListItem Text="Radio" Value="Radio" />
                                          <asp:ListItem Text="Leather Interior" Value="Leather Interior" />
                                
                                       </asp:ListBox>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-md-4">
                                    <label>Fuel Type</label>
                                    <div class="form-group">
                                       <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                          <asp:ListItem Text="Gasoline" Value="Gasoline" />
                                          <asp:ListItem Text="Manual" Value="Manual" />
                                       </asp:DropDownList>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <label>Trim/Package:</label>
                                    <div class="form-group">
                                       <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                          <asp:ListItem Text="Convertible" Value="Convertible" />
                                          <asp:ListItem Text="GT350" Value="GT350" />
                                          <asp:ListItem Text="SHELBY" Value="SHELBY" />
                                          <asp:ListItem Text="Z28 Iroc" Value="Z28 Iroc" />
                                       </asp:DropDownList>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                    <label>Price</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                    </div>
                                 </div>
                              </div>
                             
                              <div class="row">
                                 <div class="col-12">
                                    <label>Car Description</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-4">
                                    <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click1" />
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
                                            <asp:BoundField DataField="vin" HeaderText="vin" SortExpression="vin" />
                                            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                                            <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
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
