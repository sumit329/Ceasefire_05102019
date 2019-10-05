<%@ page title="Project Management" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Dashboard_ProjectManagement, App_Web_ajvvdybt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
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
                                <%--<div class="row">
                                    <div class="col-md-2">
                                        <div class="card">
                                            <div class="card-header card-header-success">
                                                <span class="pull-right badge-white">Today</span>
                                                <h2 class="no-margins font-bold">6,200</h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Pending Jobs</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="card">
                                            <div class="card-header card-header-success">
                                                <span class="pull-right badge-white">Today</span>
                                                <h2 class="no-margins font-bold">1,200</h2>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Overdue Jobs</h4>

                                            </div>
                                        </div>
                                    </div>
                                </div>--%>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="card">
                                            <div class="card-header card-header-tabs card-header-success">
                                                <label class="h4 card-title">Job Order Dashboard</label>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto; width: 80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="JobOrderID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-success" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("JobOrderID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                    <HeaderStyle Wrap="false" />
                                                                    <RowStyle Wrap="false" />
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
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="card card-chart">
                                            <div class="card-header card-header-success">
                                                <div class="ct-chart" id="barChart"></div>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Bar Graph for Month Wise Jobs</h4>
                                                <%--<p class="card-category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>--%>
                                            </div>
                                            <%--<div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated 4 minutes ago
                  </div>
                </div>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="card card-chart">
                                            <div class="card-header card-header-success">
                                                <div class="ct-chart" id="doughnutChart">
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <h4 class="card-title">Project Pie Graph</h4>
                                                <%--<p class="card-category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>--%>
                                            </div>
                                            <%--<div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated 4 minutes ago
                  </div>
                </div>--%>
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
    <script type="text/javascript">
        $(document).ready(function () {

            /* ----------==========     bar Graph Chart initialization    ==========---------- */

            var databarChart = {
                labels: ['Jan', 'Fab', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                series: [
                  [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895]

                ]
            };
            var optionsbarChart = {
                axisX: {
                    showGrid: false
                },
                low: 0,
                high: 1000,
                chartPadding: {
                    top: 0,
                    right: 5,
                    bottom: 0,
                    left: 0
                }
            };
            var responsiveOptions = [
              ['screen and (max-width: 640px)', {
                  seriesBarDistance: 5,
                  axisX: {
                      labelInterpolationFnc: function (value) {
                          return value[0];
                      }
                  }
              }]
            ];
            var barChart = Chartist.Bar('#barChart', databarChart, optionsbarChart, responsiveOptions);

            //start animation for the bar Graph Chart 
            md.startAnimationForBarChart(barChart);

            /* ----------==========     Donut  Graph Chart initialization    ==========---------- */
            var chart = new Chartist.Pie('#doughnutChart', {
                series: [30, 20, 50],
                labels: ['Total Job', 'Overdue', 'On Time']
            }, {
                donut: true,
                showLabel: true
            });

            chart.on('draw', function (data) {
                if (data.type === 'slice') {
                    // Get the total path length in order to use for dash array animation
                    var pathLength = data.element._node.getTotalLength();

                    // Set a dasharray that matches the path length as prerequisite to animate dashoffset
                    data.element.attr({
                        'stroke-dasharray': pathLength + 'px ' + pathLength + 'px'
                    });

                    // Create animation definition while also assigning an ID to the animation for later sync usage
                    var animationDefinition = {
                        'stroke-dashoffset': {
                            id: 'anim' + data.index,
                            dur: 1000,
                            from: -pathLength + 'px',
                            to: '0px',
                            easing: Chartist.Svg.Easing.easeOutQuint,
                            // We need to use `fill: 'freeze'` otherwise our animation will fall back to initial (not visible)
                            fill: 'freeze'
                        }
                    };

                    // If this was not the first slice, we need to time the animation so that it uses the end sync event of the previous animation
                    if (data.index !== 0) {
                        animationDefinition['stroke-dashoffset'].begin = 'anim' + (data.index - 1) + '.end';
                    }

                    // We need to set an initial value before the animation starts as we are not in guided mode which would do that for us
                    data.element.attr({
                        'stroke-dashoffset': -pathLength + 'px'
                    });

                    // We can't use guided mode as the animations need to rely on setting begin manually
                    // See http://gionkunz.github.io/chartist-js/api-documentation.html#chartistsvg-function-animate
                    data.element.animate(animationDefinition, false);
                }
            });

            //start animation for the bar Graph Chart 
            md.startAnimationForBarChart(doughnutChart);

        });
    </script>
</asp:Content>
