<%@ control language="C#" autoeventwireup="true" inherits="Message, App_Web_3iiuecuo" %>

<link href="../UserControlCSS/UserControl.css" rel="stylesheet" />
 
<div class="container" style="height: 32px; width: auto" id="divMsg">
    <asp:Panel ID="MessageBox" runat="server">
        <asp:HyperLink runat="server" ID="CloseButton">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/close.png" AlternateText="Click here to close this message" />
        </asp:HyperLink>
        <p>
            <asp:Literal ID="litMessage" runat="server"></asp:Literal></p>
    </asp:Panel>
</div>

