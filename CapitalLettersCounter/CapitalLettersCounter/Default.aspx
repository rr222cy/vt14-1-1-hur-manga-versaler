﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapitalLettersCounter.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hur många versaler?</title>
    <link rel="stylesheet" href="Style.css">
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <header id="header"><h1>Hur många versaler?</h1></header>
        
        <main>
            <p>Beräkna antalet versaler i en text nedan:</p>
            <section><asp:TextBox ID="userTextInput" runat="server" CssClass="capitalLettersTextarea" TextMode="MultiLine"></asp:TextBox></section>
            <p><asp:Label ID="countResult" runat="server" CssClass="standardButton"></asp:Label></p>

            <p><asp:Button ID="countSubmit" runat="server" Text="Beräkna nu" OnClick="countSubmit_Click" CssClass="standardButton"></asp:Button></p>
            <p><asp:Button ID="resetForm" runat="server" Text="Rensa" OnClick="resetForm_Click" Visible="False" CssClass="standardButton"></asp:Button></p>           
        </main>
            
    </div>
    </form>
</body>
</html>
