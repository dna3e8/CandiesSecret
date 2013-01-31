<%@ Page Title="" Language="C#" MasterPageFile="~/2colMaster.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" Runat="Server">
    <h1>
        Site Tree
    </h1>
    <p>
        A site tree is...
    </p>

    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1">
    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
</asp:Content>


