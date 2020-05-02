<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<h3>운동내역 그래프</h3>
<button type="button" onclick="location.href='workoutGraphWeek'" >주</button>
<button type="button" onclick="location.href='workoutGraphMonth'">월</button>
<button type="button" onclick="location.href='workoutGraphYear'">년</button>

<!--  
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['${memberWorkoutTag.name[]', ${memberWorkoutTag.unit[]}]
        ]);

        var options = {
          title: '오늘의 운동 내역',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="donutchart" style="width: 900px; height: 500px;"></div>
  </body>
</html>
 
-->