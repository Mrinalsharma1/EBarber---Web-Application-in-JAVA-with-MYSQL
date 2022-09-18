<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
    <%@ include file="top_Header.jsp" %>
    <%@ include file="menu.jsp" %>
    
    <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
							<span class="dash-widget-bg1"><i class="fa fa-tags mt-2" aria-hidden="true"></i></span>
							<div class="dash-widget-info text-right">
								<h3>98</h3>
								<span class="widget-title1">Shops <i class="fa fa-check" aria-hidden="true"></i></span>
							</div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg2"><i class="fa fa-user-o mt-2"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>795</h3>
                                <span class="widget-title2">Product <i class="fa fa-check " aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg3"><i class="fa fa-user-md mt-2" aria-hidden="true"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>72</h3>
                                <span class="widget-title3">Barber <i class="fa fa-check" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                        <div class="dash-widget">
                            <span class="dash-widget-bg4"><i class="fa fa-heartbeat mt-3" aria-hidden="true"></i></span>
                            <div class="dash-widget-info text-right">
                                <h3>618</h3>
                                <span class="widget-title4">Pending <i class="fa fa-check" aria-hidden="true"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                	<div class="row">
                		<div class="col-md-6">
                		<script type="text/javascript">

							      // Load the Visualization API and the corechart package.
							      google.charts.load('current', {'packages':['corechart']});
							
							      // Set a callback to run when the Google Visualization API is loaded.
							      google.charts.setOnLoadCallback(drawChart);
							
							      // Callback that creates and populates a data table,
							      // instantiates the pie chart, passes in the data and
							      // draws it.
							      function drawChart() {
							
							        // Create the data table.
							        var data = new google.visualization.DataTable();
							        data.addColumn('string', 'Topping');
							        data.addColumn('number', 'Slices');
							        data.addRows([
							          ['Mushrooms', 3],
							          ['Onions', 1],
							          ['Olives', 1],
							          ['Zucchini', 1],
							          ['Pepperoni', 2]
							        ]);
							
							        // Set chart options
							        var options = {'title':'How Much Query Solved Last day',
							                       'width':400,
							                       'height':300};
							
							        // Instantiate and draw our chart, passing in some options.
							        var chart = new google.visualization.PieChart(document.getElementById('chart_div1'));
							        chart.draw(data, options);
							      }
							    </script>
                			 <div id="chart_div1"></div>
                		</div>
                		<div class="col-md-6">
							      <script type="text/javascript">
							      google.charts.load('current', {'packages':['corechart']});
							      google.charts.setOnLoadCallback(drawVisualization);
							
							      function drawVisualization() {
							        // Some raw data (not necessarily accurate)
							        var x=135;
							        var data = google.visualization.arrayToDataTable([
							          ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
							          ['2004/05',  165,      938,         522,             998,           450,      614.6],
							          ['2005/06',  x,      1120,        599,             1268,          288,      682],
							          ['2006/07',  157,      1167,        587,             807,           397,      623],
							          ['2007/08',  139,      1110,        615,             968,           215,      609.4],
							          ['2008/09',  136,      691,         629,             1026,          366,      569.6]
							        ]);
							
							        var options = {
							          title : 'Monthly Product sell from shop',
							          vAxis: {title: 'Cups'},
							          hAxis: {title: 'Month'},
							          seriesType: 'bars',
							          series: {5: {type: 'line'}}
							        };
							
							        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
							        chart.draw(data, options);
							      }
							    </script>
                		
                			 <div id="chart_div" style="height:250px;"></div>
                		</div>
                	</div>
                </div>
			</div> 
		</div>
		
		<%@ include file="footer.jsp" %>