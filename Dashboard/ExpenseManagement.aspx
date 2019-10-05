<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="ExpenseManagement, App_Web_ajvvdybt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <span class="pull-right badge-white">Today</span>
                        <h2 class="no-margins font-bold">6,200</h2>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Expense For Approval</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <%--<span class="pull-right badge-white">Today</span>--%>
                        <h2 class="no-margins font-bold">6,200</h2>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Flexi Shortfall</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <%--<span class="pull-right badge-white">Today</span>--%>
                        <h2 class="no-margins font-bold">6,200</h2>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Pending EMS</h4>
                    </div>
                </div>
            </div>
            <div class="col-md-10">
                <div class="card card-chart">
                    <div class="card-header card-header-warning">
                        <div class="ct-chart" id="barChart"></div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Office wise Expenes Graph</h4>
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
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <div class="card-header card-header-tabs card-header-warning">
                        <div class="text-center font-weight-bold">Office wise Expence Request Dashboard</div>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Office ID</th>
                                    <th>Office Name</th>
                                    <th>Date</th>
                                    <th>Amount</th>
                                    <th>Approve/Reject Request</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>OF-212131</td>
                                    <td>Laxmi Nagar</td>
                                    <td >01/04/2019
                                    </td>
                                    <td>12000</td>
                                    <td class="td-actions ">
                                        <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                            <i class="material-icons">edit</i>
                                        </button>
                                        <%--<button type="button" rel="tooltip" title="Remove" class="btn btn-warning btn-link btn-sm">
                                        <i class="material-icons">close</i>
                                    </button>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>OF-212131</td>
                                    <td>Noida</td>
                                    <td>01/04/2019
                                    </td>
                                    <td>15780</td>
                                    <td class="td-actions">
                                        <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                            <i class="material-icons">edit</i>
                                        </button>
                                        <%--<button type="button" rel="tooltip" title="Remove" class="btn btn-warning btn-link btn-sm">
                                        <i class="material-icons">close</i>
                                    </button>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>OF-212131</td>
                                    <td>Grater Noida</td>
                                    <td>01/04/2019
                                    </td>
                                    <td>35790</td>
                                    <td class="td-actions ">
                                        <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-link btn-sm">
                                            <i class="material-icons">edit</i>
                                        </button>
                                        <%--<button type="button" rel="tooltip" title="Remove" class="btn btn-warning btn-link btn-sm">
                                        <i class="material-icons">close</i>
                                    </button>--%>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <script type="text/javascript">
        $(document).ready(function () {

            /* ----------==========     bar Graph Chart initialization    ==========---------- */

            var databarChart = {
                labels: ['OF-324', 'OF-326', 'OF-328', 'OF-339', 'OF-320', 'OF-343', 'OF-3256', 'OF-287', 'OF-424', 'OF-394', 'OF-029', 'OF-001'],
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
