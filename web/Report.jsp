<%-- 
    Document   : Report
    Created on : Jul 19, 2024, 2:12:46 PM
    Author     : TUNG PHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Report</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                font-family: Arial, sans-serif;
                background: #f0f0f0;
            }

            .chart-container {
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                text-align: center;
            }

            .chart-container h1 {
                margin-bottom: 20px;
                color: #333;
            }

            canvas {
                max-width: 100%;
            }
        </style>
    </head>
    <div class="chart-container">
        <h1>Biểu đồ tương quan giữa số lượng sinh viên nam và nữ</h1>
        <canvas id="myPieChart"></canvas>

        <%
            // Lấy dữ liệu từ Servlet
            int male = (Integer) request.getAttribute("male");
            int female = (Integer) request.getAttribute("female");
        %>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var ctx = document.getElementById('myPieChart').getContext('2d');
                var myPieChart = new Chart(ctx, {
                    type: 'pie',
                    data: {
                        labels: ['Nam', 'Nữ'],
                        datasets: [{
                                data: [<%= male %>, <%= female %>],
                                backgroundColor: [
                                    'rgba(54, 162, 235, 0.7)',
                                    'rgba(255, 99, 132, 0.7)'
                                ],
                                borderColor: [
                                    'rgba(54, 162, 235, 1)',
                                    'rgba(255, 99, 132, 1)'
                                ],
                                borderWidth: 1
                            }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            legend: {
                                position: 'top',
                            },
                            tooltip: {
                                callbacks: {
                                    label: function (tooltipItem) {
                                        return tooltipItem.label + ': ' + tooltipItem.raw;
                                    }
                                }
                            }
                        }
                    }
                });
            });
        </script>
    </div>
</body>
</html>
