<%@ Page Title="Todo List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoList.aspx.cs" Inherits="COMP229_F2016_MidTerm_300878370.TodoList" %>
<!--
    Student Name: Khushdial Singh
    Student Number: 300878370   
    Date: 10/19/2016
    -->
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- gridview containing the data -->
   <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false"
    CssClass="tables table-bordered table-sm" DataKeyNames="TodoDescription" ShowHeader="false">
        <Columns>
            <!-- description field -->
            <asp:BoundField DataField="TodoDescription" HeaderText="Todo" Visible="true" />
            <!-- notes field -->
            <asp:BoundField DataField="TodoNotes" HeaderText="Notes" Visible="true" />
            <!-- completed/not completed field -->
            <asp:CheckBoxField DataField="Completed" HeaderText="Completed" Visible="true"/>
            <!-- edit button-->
            <asp:CommandField HeaderText="Edit" EditText="<i class='fa fa-pencil-square-o fa-lg '></i> Edit"
                            ShowEditButton="true" ButtonType="Link" ControlStyle-CssClass="edit btn btn-sm"  />
                <!-- delete button-->
            <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="delete btn btn-danger btn-sm" />
        </Columns>



    </asp:GridView>
</asp:Content>
