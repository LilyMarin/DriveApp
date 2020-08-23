<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="car_inventory.aspx.cs" Inherits="DriveApp.car_inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });

         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();

                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };

                 reader.readAsDataURL(input.files[0]);
             }
         }

   </script>
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
                                    <img id="imgview" Height="150px" src="car_inventory/jeep.png" />
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
                                            <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Make</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="Make 1" Value="Make 1" />
                                            <asp:ListItem Text="Make 2" Value="Make 2" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Model Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Model 1" Value="Model 1" />
                                            <asp:ListItem Text="Model 2" Value="Model 2" />
                                        </asp:DropDownList>
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
                                 <div class="col-md-4">
                                     <label>Production Year</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Production Year"></asp:TextBox>
                                    </div>
                                 
                                 </div>
                                 <div class="col-md-4">
                                     <label>Interior</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Interior"></asp:TextBox>
                                    </div>
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col-md-4">
                                     <label>Exterior</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Exterior"></asp:TextBox>
                                    </div>
                                 </div>
                                <div class="col-md-4">
                                     <label>Mileage</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Mileage"></asp:TextBox>
                                    </div>
                                 
                                 </div>
                                 <div class="col-md-4">
                                     <label>Amenities</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Amenities"></asp:TextBox>
                                    </div>
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col-md-4">
                                     <label>Engine</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Engine"></asp:TextBox>
                                    </div>
                                 </div>
                                <div class="col-md-4">
                                     <label>Transmission</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Transmission"></asp:TextBox>
                                    </div>
                                 
                                 </div>
                                 <div class="col-md-4">
                                     <label>Doors</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Doors"></asp:TextBox>
                                    </div>
                                 </div>
                             </div>
                             <div class="row">
                                 <div class="col-md-4">
                                     <label>Seats</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Seats"></asp:TextBox>
                                    </div>
                                 </div>
                                <div class="col-md-4">
                                     <label>Fuel Type</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Fuel Type"></asp:TextBox>
                                    </div>
                                 
                                 </div>
                                 <div class="col-md-4">
                                     <label>Trim</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="Trim"></asp:TextBox>
                                    </div>
                                 </div>
                             </div>
                              <div class="row">
                                 <div class="col-md-4">
                                     <label>Price</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="Price"></asp:TextBox>
                                    </div>
                                 </div>
                                 <div class="col-md-4">
                                     <label>Description</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox18" runat="server" placeholder="Description"></asp:TextBox>
                                    </div>
                                 </div>
                             </div>
                           <div class="row">
                                <div class="col">
                                <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                             
                             
                            <div class="row">
                                <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                                <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button4_Click" />
                                </div>
                                <div class="col-4">
                                <asp:Button ID="Button5" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button5_Click" />
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
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="car_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="car_id" HeaderText="ID" ReadOnly="True" SortExpression="car_id" />
                                            
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                   <div class="container-fluid">
                                                       <div class="row">
                                                           <div class="col-lg-10">
                                                               <div class="row">
                                                                   <div class="col-lg-2">
                                                                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("make") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                   </div>
                                                                   <div class="col-lg-2">
                                                                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("model") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                   </div>
                                                                   <div class="col-lg-4">
                                                                       <asp:Label ID="Label9" runat="server" Text='<%# Eval("production_year") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                   </div>
                                                               </div>
                                                               <div class="row">
                                                                   <div class="col-lg-2">
                                                                       Interior -
                                                                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("interior") %>'></asp:Label>
                                                                       &nbsp;|</div>
                                                                    <div class="col-lg-2">
                                                                        Exterior -
                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("exterior") %>'></asp:Label>
                                                                        &nbsp;|</div>
                                                                    <div class="col-lg-2">
                                                                        Doors - 
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("doors") %>'></asp:Label>
                                                                   </div>
                                                                   <div class="col-lg-2">
                                                                       Seats - 
                                                                       <asp:Label ID="Label10" runat="server" Text='<%# Eval("seats") %>'></asp:Label>
                                                                   </div>
                                                                   <div class="col-lg-2">
                                                                       Engine - 
                                                                       <asp:Label ID="Label11" runat="server" Text='<%# Eval("engine") %>'></asp:Label>
                                                                   </div>
                                                                   <div class="col-lg-2">
                                                                       Transmission -
                                                                       <asp:Label ID="Label12" runat="server" Text='<%# Eval("transmission") %>'></asp:Label>
                                                                   </div>
                                                               </div>
                                                                <div class="row">
                                                                   <div class="col-lg-4">
                                                                       Trim - 
                                                                       <asp:Label ID="Label6" runat="server" Text='<%# Eval("trim") %>'></asp:Label>
                                                                   </div>
                                                                    <div class="col-lg-4">
                                                                        VIN - 
                                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("vin") %>'></asp:Label>
                                                                   </div>
                                                                   
                                                                    <div class="col-lg-4">
                                                                        Fuel Type - 
                                                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("fuel_type") %>'></asp:Label>
                                                                   </div>
                                                                     <div class="col-lg-4">
                                                                         Description -
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                                                   </div>
                                                               </div>
                                                                <div class="row">
                                                                   <div class="col-lg-4">

                                                                   </div>
                                                                    <div class="col-lg-4">

                                                                   </div>
                                                                    <div class="col-lg-4">

                                                                   </div>
                                                               </div>
                                                           </div>
                                                           <div class="col-lg-2">
                                                               <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("car_img_link") %>' />
                                                           </div>
                                                       </div>
                                                   </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            
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
