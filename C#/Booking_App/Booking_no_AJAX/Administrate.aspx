﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Administrate.aspx.cs" Inherits="Booking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Here you can make changes as Admin!</h3>

    <div class="row">
        <div class="col-md-8 container">

            <h4>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Height="349px" PageSize="4" Width="649px" DataKeyNames="Id" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="HId" HeaderText="HId" SortExpression="HId" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Rooms] ORDER BY [Id]"
                    UpdateCommand="UPDATE Rooms SET [Category]=@Category, [Type]=@Type, [Price]=@Price, [HId]=@HId WHERE [Id]=@Id" DeleteCommand="DELETE FROM Rooms WHERE [Id]=@Id"></asp:SqlDataSource>
            </h4>
        </div>
        <div class="col-md-4 container">
            <div class="row">
                <div class="form-group col-md-10">
                    <label>Hotel:</label>
                    <asp:DropDownList CssClass="DropDownListStyling" DataValueField="id" ID="sqlhotel" runat="server" DataSourceID="sqlhotels" DataTextField="Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlhotels" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Select Id, Name from Hotels"></asp:SqlDataSource>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-10">
                    <label for="insertCategory">Category:</label>
                    <asp:TextBox runat="server" type="text" class="form-control" ID="insertCategory" placeholder="Enter a Category" name="insertCategory" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="insertCategory" CssClass="text-danger" ErrorMessage="The category field is required." />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-10">
                    <label for="insertType">Type:</label>
                    <asp:TextBox runat="server" type="text" class="form-control" ID="insertType" placeholder="Enter a Type" name="insertType" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="insertType" CssClass="text-danger" ErrorMessage="The type field is required." />
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-10">
                    <label for="insertPrice">Price:</label>
                    <asp:TextBox runat="server" type="text" class="form-control datepicker" ID="insertPrice" placeholder="Enter a Price" name="insertPrice" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="insertPrice" CssClass="text-danger" ErrorMessage="The price field is required." />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="form-group col-md-10">
                    <asp:Button runat="server" ID="btnAdd" type="submit" class="btn btn-outline-dark" Text="Add Room" OnClick="AddRoom" />
                </div>
            </div>

        </div>
    </div>


</asp:Content>