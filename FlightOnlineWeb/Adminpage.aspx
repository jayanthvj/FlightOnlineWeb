﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Adminpage.aspx.cs" Inherits="FlightOnlineWeb.Adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div aria-readonly="True">
        <asp:GridView ID="idFlightView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="flightId" AutoGenerateDeleteButton="True"
            AutoGenerateEditButton="True" onrowcancelingedit="FlightView1_RowCancelingEdit"   
            onrowdeleting="FlightView1_RowDeleting" onrowediting="FlightView1_RowEditing"   
            onrowupdating="FlightView1_RowUpdating" >
            <Columns>
                <asp:TemplateField HeaderText="FLIGHT ID" runat="server">
                    <ItemTemplate>  
                        <asp:Label ID="LabelFlightId" runat="server" Text='<%# Bind("flightId") %>'></asp:Label>  
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FLIGHT NAME" runat="server">
                    <EditItemTemplate>  
                        <asp:TextBox ID="TxtFlightName" runat="server" Text='<%# Bind("flightName") %>'></asp:TextBox> 
                    </EditItemTemplate>
                    <ItemTemplate>  
                        <asp:Label ID="LabelFlightName" runat="server" Text='<%# Bind("flightName") %>'></asp:Label>  
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FLIGHT NUMBER" runat="server">
                    <EditItemTemplate>  
                        <asp:TextBox ID="TxtFlightNumber" runat="server" Text='<%# Bind("flightNumber") %>'></asp:TextBox> 
                    </EditItemTemplate>
                    <ItemTemplate>  
                        <asp:Label ID="LabelFlightNumber" runat="server" Text='<%# Bind("flightNumber") %>'></asp:Label>  
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <table border="1" style="border-collapse: collapse">
            <tr>
                <td style="width: 102px">
                    FlightName:<br />
                    <asp:TextBox ID="txtFlightName" runat="server" Width="140" />
                </td>
                <td style="width: 102px">
                    FlightNumber:<br />
                    <asp:TextBox ID="txtFlightNumber" runat="server" Width="140" />
                </td>
                <td style="width: 102px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
