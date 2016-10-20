<%@ Page Title="Todo Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodoDetails.aspx.cs" Inherits="COMP229_F2016_MidTerm_300878370.TodoDetails" %>

<!--
    Student Name: Khushdial Singh
    Student Number: 300878370   
    Date: 10/19/2016
    -->

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
                     <!-- container with fields to add description and notes-->
                    <div class="details">
                        <!-- legend -->
                           <legend>Todo Details</legend>
                        <!-- field containing the name of todo -->
                        <div class="form-group">
                            <label for="firstName">Todo name</label>
                            <input type="text" class="form-control" id="firstName" placeholder="Enter Your First Name" required>
                        </div>
                        <!-- field containing the notes of the todo -->
                        <div class="form-group">
                            <label for="lastName">Todo Notes</label>
                            <input type="text" class="form-control" id="lastName" placeholder="Enter Your Last Name" required>
                        </div>
                        
                        <!-- completed checkbox -->
                        <div class="form-group">
                            <input type="checkbox" id="completedCheck" class="" />completed
                        </div>
                        <!-- cancel button-->
                        <div class="text-right">
                            <a id="cancelButton" href="home.html" class="btn btn-warning">Cancel</a>
                            <!-- send button -->
                            <button id="sendButton" class="btn btn-primary">Send</button>
                        </div>
                        </div>

</asp:Content>
