<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="carrenting.aspx.cs" Inherits="DriveApp.carrenting" %>
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
                                       <h3>Rent Car</h3>
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
                                    <label>Member ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label>Book ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=""></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <asp:Button ID="Button1" class="btn btn-lg btn-block btn-outline-dark" runat="server" Text="Go"  />
                                </div>
                                <div class="col-md-6">
                                    <label>Member Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Book Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Start Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>End Date</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                </div>
                            <div class="row">
                                <div class="col-6">
                                    <asp:Button ID="Button2" class="btn btn-lg btn-block btn-outline-dark" runat="server" Text="Rent"  />
                                </div>
                                <div class="col-6">
                                    <asp:Button ID="Button3" class="btn btn-lg btn-block btn-outline-success" runat="server" Text="Return"  />
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
                                <div class="col">
                                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                                </div>
                            </div>
                         </div>
                    </div>
                </div>
             </div>
         </div>
     </section>
</asp:Content>
