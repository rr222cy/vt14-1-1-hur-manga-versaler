<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapitalLettersCounter.Default" %>

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
            <section><asp:TextBox ID="TextBox1" runat="server" CssClass="capitalLettersTextarea" TextMode="MultiLine"></asp:TextBox></section>


            <p><asp:Button ID="Button1" runat="server" Text="Beräkna nu" OnClick="Button1_Click1"></asp:Button></p>
            <p><asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
        </main>
            
    </div>
    </form>
</body>
</html>
