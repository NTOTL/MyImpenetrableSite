<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="MyImpenetrableSite.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">&nbsp;</div>
    </div>
    <div class="row">
        <div class="col-md-12"><h3>Add New User</h3></div>
    </div>
    <div class="row">
        <div class="col-md-3">
            First Name:
        </div>
        <div class="col-md-9">
            <!-- <input type="text" name="txtFirstName" class="form-control" /> -->

            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">
        <div class="col-md-3">
            Last Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
     <div class="row">&nbsp;</div>
    <div class="row">
        <div class="col-md-3">
            Email:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
     <div class="row">&nbsp;</div>
    <div class="row">
        <div class="col-md-3">
            Phone:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">
        <div class="col-md-3">
            <asp:Button ID="btnAddUser" runat="server" CssClass="btn btn-primary" Text="Add User" OnClick="btnAddUser_Click" />
        </div>
    </div>
    <div class="row">&nbsp;</div>
</asp:Content>
