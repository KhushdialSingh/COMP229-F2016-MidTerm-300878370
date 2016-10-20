<%@ Page Title="Todo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoList.aspx.cs" Inherits="COMP229_F2016_MidTerm_300878370.TodoList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false"
    CssClass="tables" DataKeyNames="Team1" ShowHeader="false">
        <Columns>
            <asp:BoundField DataField="TodoDescription" HeaderText="Todo" Visible="true" />
            <asp:BoundField DataField="TodoNotes" HeaderText="Notes" Visible="true" />
            
        </Columns>
    </asp:GridView>
</asp:Content>
