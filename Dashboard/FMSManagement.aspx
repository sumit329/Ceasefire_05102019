<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Dashboard_FMSManagement, App_Web_ajvvdybt" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="content">
                <div class="container-fluid">
                    <table style="width: 100%;">
                        <tr>
                            <td></td>
                            <td style="width: 80vw;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-left">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 294px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                                <div class="row" id="Div1" runat="server">
                                    <div class="col-md-12 ml-3">
                                        <button id="btnLibrary" runat="server" class="btn btn-info" onserverclick="btnLibrary_ServerClick"><i class="material-icons">local_library</i></button>
                                        <button id="btnText" runat="server" class="btn btn-info" onserverclick="btnText_ServerClick"><i class="material-icons">text_fields</i></button>
                                        <button id="btnVideo" runat="server" class="btn btn-info" onserverclick="btnVideo_ServerClick"><i class="material-icons">video_library</i></button>
                                    </div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-md-12">
                                        <asp:Panel ID="pnl" runat="server"></asp:Panel>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="max-height: 300px; height: auto;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="FMSLibraryID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowDataBound="grdMasterView_RowDataBound">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lbtnOpenfile" CommandArgument='<%#Eval("FilePath")%>' OnClick="lbtnOpenfile_Click" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>open_in_browser</i>"></asp:LinkButton>
                                                                                <asp:LinkButton ID="lbtnFilePath" CommandArgument='<%#Eval("FilePath")%>' OnClick="lbtnFilePath_Click" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>archive</i>"></asp:LinkButton>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="10px" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Document Headlines">
                                                                            <ItemTemplate>
                                                                                <%#Eval("DocumentName")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Document Details">
                                                                            <ItemTemplate>
                                                                                <%#Eval("DocumentDetails")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="true" />
                                                                    <RowStyle Wrap="true" />
                                                                    <AlternatingRowStyle />
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" id="Div2" runat="server">
                                    <div id="divPendingPI" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnPendingPI" runat="server" OnClick="lbtnPendingPI_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Pending Indents</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divPendingPO" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnPendingPO" runat="server" OnClick="lbtnPendingPO_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Pending PO</h4>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="divItemMinimumLevel" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnItemMinimumLevel" runat="server" OnClick="lbtnItemMinimumLevel_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Item Minimum Level</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divVOC" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnVOC" runat="server" OnClick="lnkVOC_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Feedback/Suggestion</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divAudit" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnAudit" runat="server" OnClick="lbtnAudit_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">FMS Audit</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divSupervisorAudit" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnSupervisorAudit" runat="server" OnClick="lbtnSupervisorAudit_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Supervisor Audit</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divVirtualAudit" runat="server" class="col-md-3">
                                        <div class="card">
                                            <div class="card-header card-header-info">
                                                <span class="pull-right badge-white"></span>
                                                <h2 class="no-margins font-bold">
                                                    <asp:LinkButton ID="lbtnVirtualAudit" runat="server" OnClick="lbtnVirtualAudit_Click" CssClass="text-white"></asp:LinkButton></h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Virtual Audit</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div id="divSupervisorAuditChart" runat="server" class="col-md-6">
                                        <div class="card card-chart">
                                            <div class="card-header card-header-info">
                                                <asp:Chart ID="chartSupervisorAudit" runat="server" CssClass="w-100">
                                                    <Titles>
                                                        <asp:Title ShadowOffset="10" Name="Items" />
                                                    </Titles>
                                                    <Legends>
                                                        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="true" Name="Default"
                                                            LegendStyle="Row" BackColor="#50C1CF"
                                                            ForeColor="White" BorderColor="255, 128, 128" BorderWidth="1"
                                                            Font="Microsoft Sans Serif, 7pt, style=Bold" TitleFont="Microsoft Sans Serif, 12pt, style=Bold" />
                                                    </Legends>
                                                    <Series>
                                                        <asp:Series Name="Default" />
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
                                                    </ChartAreas>
                                                    <BorderSkin BackColor="Transparent" PageColor="Transparent"
                                                        SkinStyle="Emboss" />
                                                </asp:Chart>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Supervisor Audit</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="divJobSkillAuditChart" runat="server" class="col-md-6">
                                        <div class="card card-chart">
                                            <div class="card-header card-header-info">
                                                <asp:Chart ID="chartJobSkillAudit" runat="server" CssClass="w-100">
                                                    <Titles>
                                                        <asp:Title ShadowOffset="10" Name="Items" />
                                                    </Titles>
                                                    <Legends>
                                                        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="true" Name="Default"
                                                            LegendStyle="Row" BackColor="#50C1CF"
                                                            ForeColor="White" BorderColor="255, 128, 128" BorderWidth="1"
                                                            Font="Microsoft Sans Serif, 7pt, style=Bold" TitleFont="Microsoft Sans Serif, 12pt, style=Bold" />
                                                    </Legends>
                                                    <Series>
                                                        <asp:Series Name="Audit" BorderColor="Black" BorderWidth="1" ChartType="Column" IsValueShownAsLabel="True">
                                                        </asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1" BorderWidth="0" BackColor="white">
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                    <BorderSkin BackColor="Transparent" PageColor="Transparent"
                                                        SkinStyle="Emboss" />
                                                </asp:Chart>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Job Skill Audit</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="Div4" runat="server">
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="pnlRequest" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                                <asp:GridView ID="grdRequest" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="FMSRequestID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdRequest_PageIndexChanging" OnRowDataBound="grdRequest_RowDataBound">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("FMSRequestID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="10px" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Module">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Module")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Subject">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Subject")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Remarks">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Remarks")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="true" />
                                                                    <RowStyle Wrap="true" />
                                                                    <AlternatingRowStyle />
                                                                </asp:GridView>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
