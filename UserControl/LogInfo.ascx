<%@ control language="C#" autoeventwireup="true" inherits="LogInfo, App_Web_3iiuecuo" %>
<nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top">
    <div class="container-fluid">
        <button id="hamburgar" class="navbar-toggler" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
        </button>
        <div class="navbar-wrapper">
            <a class="navbar-brand" href="#"></a>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
                <li class="nav-item d-none">
                    <asp:Label ID="lblCompanyName" runat="server" CssClass="m-2" data-toggle="tooltip" data-placement="bottom" title="Company Name"></asp:Label>
                </li>
                <li class="nav-item">
                    <asp:Label ID="lblLoginName" runat="server" Style="text-transform: uppercase; color: #fff; background-color: #096692; font-size: 18px; border-radius: 14px; font-weight: 600; padding: 1px 4px 2px; display: none;"></asp:Label>
                    <asp:Label ID="lblEmployeeName" runat="server" CssClass="m-2" data-toggle="tooltip" data-placement="bottom" title="Employee Name"></asp:Label>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <asp:Image id="imgUser" runat="server" Style="height:2rem;width:2rem;border-radius:50%;"/>
                    </a>
                    
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                        <a class="dropdown-item" href='<%= Page.ResolveUrl("~/Home.aspx")%>'>Home
                        </a>
                        <a class="dropdown-item" href='<%= Page.ResolveUrl("~/CommonModule/ResetPassword.aspx")%>'>Reset Password
                        </a>
                        <%--<a class="dropdown-item" href='<%= Page.ResolveUrl("~/CommonModule/ProfileSetting.aspx")%>'>Profile Setting
                        </a>
                        <a class="dropdown-item" href='<%= Page.ResolveUrl("~/CommonModule/Planner.aspx")%>'>Planner
                        </a>
                        <a class="dropdown-item" href='<%= Page.ResolveUrl("~/CommonModule/HolidayList.aspx")%>'>Holiday List
                        </a>--%>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" runat="server" id="lnkLogOut" onserverclick="lnkLogOut_ServerClick">Log out
                        </a>
                    </div>
                </li>
                 <li class="nav-item dropdown d-none">
                    <a class="nav-link" href="#" id="navbarDropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="material-icons">menu</i>
                    <asp:Label ID="lblMenuName" runat="server" CssClass="m-2" data-toggle="tooltip" data-placement="bottom" title="Menu List"></asp:Label>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenu">
                        <asp:Literal ID="ulMenu" runat="server"></asp:Literal>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

