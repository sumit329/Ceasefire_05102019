<%@ control language="C#" autoeventwireup="true" inherits="Leftmenu, App_Web_3iiuecuo" %>
<div class="sidebar" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
    <%--data-color="danger"--%>
    <div class="logo">
        <a href="../Home.aspx" class="simple-text logo-normal">
            <img id="ImgCompanyLogo" runat="server" alt="logo" style="width: 5rem;" />
        </a>
    </div>
    <div class="sidebar-wrapper">
        <ul class="nav flex-column flex-nowrap">
            <li id="ulMenu" runat="server"></li>
        </ul>
        <%--<ul class="dropdown nav">
            <li class="dropdown-toggle nav-item active d-inline" data-toggle="dropdown">
                <a href="#" class="nav-link d-flex"><i class="material-icons">book</i><p>TEST</p></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="#"><i class="material-icons">book</i><p>TEST1</p>
                    </a></li>
                    <li class="dropdown-item"><a href="#"><i class="material-icons">book</i><p>TEST2</p>
                    </a></li>
                    <li class="dropdown-item"><a href="#"><i class="material-icons">book</i><p>TEST3</p>
                    </a></li>
                    <li class="dropdown-item"><a href="#"><i class="material-icons">book</i><p>TEST4</p>
                    </a></li>
                </ul>
            </li>
        </ul>--%>
    </div>
    <div class="sidebar-background" style="background-image: url(../assets/img/sidebar-1.jpg)"></div>
</div>
