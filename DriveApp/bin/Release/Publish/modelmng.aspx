<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="modelmng.aspx.cs" Inherits="DriveApp.modelmng" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
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
                                       <img width="150px" src="img/jeep.png"/>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col">
                                    <center>
                                       <h3>Model Details</h3>
                                    </center>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                <label>Model ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                                </div>
                                <div class="col-md-8">
                                <label>Model Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4">
                                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-outline-success" runat="server" Text="Add" OnClick="Button2_Click"  />
                                </div>
                                 <div class="col-4">
                                    <asp:Button ID="Button4" class="btn btn-lg btn-block btn-outline-warning" runat="server" Text="Update" OnClick="Button4_Click"  />
                                </div>
                                <div class="col-4">
                                    <asp:Button ID="Button3" class="btn btn-lg btn-block btn-outline-danger" runat="server" Text="Delete" OnClick="Button3_Click"  />
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
                                       <h3>Models</h3>
                                    </center>
                                 </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <hr>
                                </div>
                            </div>
                             <div class="row">
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:carRentalDBConnectionString %>" SelectCommand="SELECT * FROM [model_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="model_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="model_id" HeaderText="model_id" ReadOnly="True" SortExpression="model_id" />
                                            <asp:BoundField DataField="model_name" HeaderText="model_name" SortExpression="model_name" />
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
