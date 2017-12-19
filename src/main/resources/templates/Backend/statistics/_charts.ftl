<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>
                Atlantic Statistics
            </h2>
        </div>
        <div class="x_content">

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
                    data.addColumn('string','Product');
                    data.addColumn('number','Views');
                    data.addRows([
                    <#list productsView as product>
                        <#if product?is_last>
                                [${product}]
                        <#else>
                                [${product}],
                        </#if>
                    </#list>
                    ]);

                    // Set chart options
                    var options = {'title':'Views per Products',
                        'width':400,
                        'height':300};

                    // Instantiate and draw our chart, passing in some options.
                    var chart = new google.visualization.PieChart(document.getElementById('productV'));
                    chart.draw(data, options);
                }

            </script>

            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                <div id="productV"></div>
            </div>

            <br>

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
                    data.addColumn('string','Product');
                    data.addColumn('number','Units');
                    data.addRows([
                    <#list purchaseStatistics as purchase>
                        <#if purchase?is_last>
                                [${purchase}]
                        <#else>
                                [${purchase}],
                        </#if>
                    </#list>
                    ]);

                    // Set chart options
                    var options = {'title':'Units Purchased per Product',
                        'width':400,
                        'height':300};

                    // Instantiate and draw our chart, passing in some options.
                    var chart = new google.visualization.PieChart(document.getElementById('purchaseS'));
                    chart.draw(data, options);
                }
            </script>

            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                <div id="purchaseS"></div>
            </div>

            <br>

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
                    data.addColumn('string','Supplier');
                    data.addColumn('number','Popularity');
                    data.addRows([
                    <#list supplierStatistics as supplier>
                        <#if supplier?is_last>
                                [${supplier}]
                        <#else>
                                [${supplier}],
                        </#if>
                    </#list>
                    ]);

                    // Set chart options
                    var options = {'title':'Supplier Popularity Among Buyers',
                        'width':400,
                        'height':300};

                    // Instantiate and draw our chart, passing in some options.
                    var chart = new google.visualization.PieChart(document.getElementById('suppliers'));
                    chart.draw(data, options);
                }
            </script>

            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                <div id="suppliers"></div>
            </div>

            <br>

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
                    data.addColumn('string','Supplier');
                    data.addColumn('number','Popularity');
                    data.addRows([
                    <#list supplierStatistics as supplier>
                        <#if supplier?is_last>
                                [${supplier}]
                        <#else>
                                [${supplier}],
                        </#if>
                    </#list>
                    ]);

                    // Set chart options
                    var options = {'title':'Supplier Popularity Among Buyers',
                        'width':400,
                        'height':300};

                    // Instantiate and draw our chart, passing in some options.
                    var chart = new google.visualization.PieChart(document.getElementById('avePurchase'));
                    chart.draw(data, options);
                }
            </script>

            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                <div id="avePurchase"></div>
            </div>

            <br>

            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                <div id="items"></div>
            </div>

            <script type="text/javascript">
//                google.charts.load('current', {'packages':['corechart']});
//                google.charts.setOnLoadCallback(drawProductViewBarChart());
//                google.charts.setOnLoadCallback(drawPurchaseBarChart());
//                google.charts.setOnLoadCallback(drawSupplierPieChart());
//                google.charts.setOnLoadCallback(drawAveragePurchaseBarChart());
//                google.charts.setOnLoadCallback(drawAverageItemBarChart());


                function drawSupplierPieChart() {
                    var data = google.visualization.arrayToDataTable([
                        ['Supplier', 'Popularity'],
                    <#list supplierStatistics as supplier>
                        <#if supplier?is_last>
                                [${supplier}]
                        <#else>
                                [${supplier}],
                        </#if>
                    </#list>
                    ]);

                    var options = {
                        title: 'Supplier Popularity Among Buyers',
                        'min-width':300,
                        'min-height':300,
                        legend: 'none'
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('suppliers'));
                    chart.draw(data, options);
                }

                function drawAveragePurchaseBarChart() {
                    var data = google.visualization.arrayToDataTable([
                        ['User', 'Dollars Spent', { role: "style" }],
                    <#list averagePurchase as average>
                        <#if average?is_last>
                                [${average}]
                        <#else>
                                [${average}],
                        </#if>
                    </#list>
                    ]);

                    var options = {
                        title: 'Average Purchase per User',
                        'min-width':300,
                        'min-height':300,
                        legend: 'none'
                    };

                    var chart = new google.visualization.BarChart(document.getElementById('avePurchase'));
                    chart.draw(data, options);
                }

                function drawAverageItemBarChart() {
                    var data = google.visualization.arrayToDataTable([
                        ['User', 'Items Bought', { role: "style" }],
                    <#list averageItems as average>
                        <#if average?is_last>
                                [${average}]
                        <#else>
                                [${average}],
                        </#if>
                    </#list>
                    ]);

                    var options = {
                        title: 'Average Items Purchased per User',
                        'min-width':300,
                        'min-height':300,
                        legend: 'none'
                    };

                    var chart = new google.visualization.BarChart(document.getElementById('items'));
                    chart.draw(data, options);
                }
            </script>
        </div>
    </div>
</div>
<!--I Know this is wrong, i just don't care-->
<br><br><br><br><br><br><br><br><br>

