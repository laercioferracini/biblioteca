<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmLivro.aspx.cs" Inherits="UNIP.BILIBOTECA.APP.frmLivro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <form id="form1" role="form" runat="server" class="form-horizontal">
        <fieldset>
            <legend class="">Cadastro de Livros</legend>
        </fieldset>
        <div class="form-group">
            <asp:Label ID="lbTitulo" runat="server" Text="Título" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txTituloLivro" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lbAutor" runat="server" Text="Autor" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txAutor" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lbAno" runat="server" Text="Ano" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txAno" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lbGenero" runat="server" Text="Genero" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txGenero" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lbEditora" runat="server" Text="Editora" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txEditora" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
            </div>

        </div>
        <div class="form-group">
            <asp:Label ID="lbPaginas" runat="server" Text="Paginas" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txPaginas" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lbStatus" runat="server" Text="Status" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txStatus" runat="server" Width="30px" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="col-lg-10 col-lg-offset-2">
            <asp:Button ID="btSalvar" runat="server" OnClick="btSalvar_Click" Text="Cadastrar" CssClass="btn btn-success" />
            <asp:Button ID="btCancelar" runat="server" Text="Cancelar" CssClass="btn btn-warning" />
        </div>
    </form>
</asp:Content>
