<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="taglib.jsp" />
<html>
<jsp:include page="head.jsp" />
<body class="bgimg">
<%@include file="navbar.jsp"%>
<div class="container-fluid">

    <div class="container">
        <h2>Search Results: </h2><br/>
    <table id="calculating" class="table table-bordered" cellspacing="0" width="100%">
        <thead >
        <tr>
            <th>Food Name</th>
            <th>Calories</th>
            <th>Weight</th>
            <th>Result</th>
        </tr>
        </thead>
        <tbody >
            <tr>
                <td>${foodName}</td>
                <td ><input id="foodCalorie" type="number" value="${foodCalorie}"/></td>
                <td><input id="calculate" placeholder=" quick calculation" type="number"><button id="calculateCalories">Get Calories</button> </td>
                <td id="result"></td>
            </tr>
        </tbody>
    </table></div>
<div class="container">
    <table id="userTable" class="table">
        <thead class="thead-dark">
            <tr>
                <th id="foodNameId">Food Name</th>
                <th id="foodCalorieId">Calories</th>
            </tr>
        </thead>
        <c:forEach var="foodItem" items="${foods}">
        <tbody>
            <tr>

                    <td>${foodItem.foodName}</td>
                    <td>${foodItem.foodCalories}</td>
            </tr>
        </tbody>
        </c:forEach>
    </table>
</div>
</div>
</body>
</html>

<script type="text/javascript">
    $('#userTable').each(function () {
        if ( $(this).find('td').length < 1 || $(this).find('td').is(':empty') ) {
            $(this).hide();
            $('#foodNameId').hide();
            $('#foodCalorieId').hide();
        } else {
            $("#userTable").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true
            });
            $("#calculating").hide();
        }
        });
    $("#calculateCalories").on("click", function() {
        var calories = $("#foodCalorie").val();

        var sgrams = $("#calculate").val();



        var calculatedCalories = Math.round((sgrams/100) * calories);

        $("#result").html(calculatedCalories + " calories for " + sgrams + " grams" );


    });

</script>

<style>
    body,h1 {font-family: "Raleway", sans-serif}
    body, html {height: 100%}
    .bgimg {
        background: url('images/board_bread.jpg');
        min-height: 100%;
        background-position: center;
        background-size: cover;
    }
    .navbar-inverse .navbar-brand {
        color: #5cb85c!important;
    }
</style>