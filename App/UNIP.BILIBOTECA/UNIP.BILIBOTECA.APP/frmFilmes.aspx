﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmFilmes.aspx.cs" Inherits="UNIP.BILIBOTECA.APP.frmFilmes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <form id="formFilmes" role="form" runat="server" class="form-horizontal">
        <fieldset>
            <legend>Cadastro de Filmes</legend>
            <div class="form-group">
                <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                <div class="col-lg-10">
                    <input class="form-control" id="inputEmail" placeholder="Email" type="text" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                <div class="col-lg-10">
                    <input class="form-control" id="inputPassword" placeholder="Password" type="password" />
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" />
                            Checkbox
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                <div class="col-lg-10">
                    <textarea class="form-control" rows="3" id="textArea"></textarea>
                    <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 control-label">Radios</label>
                <div class="col-lg-10">
                    <div class="radio">
                        <label>
                            <input name="optionsRadios" id="optionsRadios1" value="option1" checked="" type="radio" />
                            Option one is this
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input name="optionsRadios" id="optionsRadios2" value="option2" type="radio" />
                            Option two can be something else
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="select" class="col-lg-2 control-label">Selects</label>
                <div class="col-lg-10">
                    <select class="form-control" id="select">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                    <br/>
                    <select multiple="" class="form-control">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <button type="reset" class="btn btn-default">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </fieldset>
    </form>
</asp:Content>