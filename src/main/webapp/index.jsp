<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%--    <meta charset="UTF-8">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <title>Sổ số kiến thiết</title>--%>
<%--    <link rel="icon" href="https://th.bing.com/th/id/OIP.9mOPxKxpmsmQRWA_GBEndgHaHa?w=156&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7" type="image/png">--%>

<%--    <link rel="stylesheet" type="text/css" href="style.css">--%>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta charset="UTF-8">
    <title>Xổ Số Trực Tuyến</title>
    <style>
        header {
            background-color: darkred;
            color: white;
            padding: 10px;
            text-align: center;
        }

        /* Footer styles */
        footer {
            background-color: darkred;
            color: white;
            padding: 10px;
            text-align: center;
            /*position: fixed;*/
            bottom: 0;
            width: 100%;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            background-size: cover;
            background-repeat: round;
            background-attachment: fixed;
        }

        .container {
            display: flex;
            height: fit-content; /* Chiều cao của màn hình */
            justify-content: center;
            background: url("https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-shopping-lottery-poster-image_145021.jpg");
        }


        #main-content {
            flex: 1;
            padding: 20px;
            text-align: center; /* Canh giữa nội dung trong cột 3/4 */
        }

        h1 {
            color: #333;
        }

        img {
            width: 100%; /* Hình ảnh không vượt quá chiều rộng của cha */
            height: 100px; /* Đặt độ cao của hình ảnh là 100px */
            display: block; /* Loại bỏ khoảng trắng dưới hình ảnh */
            margin: 0 auto; /* Canh giữa hình ảnh trong cột */
        }

        .lottery-bar{
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            background-color: red;
        }
        .lottery-bar th{
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        .lottery-results {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        .lottery-results td, .lottery-results th {
            border: 1px solid black;
            padding: 8px;
            text-align: center;

        }
        .prize-column {
            width: 20%; /* Adjusted width for the prize column */
        }

        .lottery-results th {
            background-color: white;
            /*color: black;*/
        }
        .lottery-provinces p {
            padding-left: 25px;
            font-size: 15px;
        }

        .eighth{
            font-size: 40px;
            color: red;
        }
        .special{
            font-size: 40px;
            color: red;
        }
        #lottery-form {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Style for the form elements */
        #lottery-form select, #lottery-form input, #lottery-form button {
            margin-right: 10px;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        #sidebar {
            width: 500px;
            background-color: #fff; /* White sidebar background */
            color: #333; /* Dark text color */
            padding: 20px;
            justify-content: center;
        }

        .lottery-bar {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }

        .lottery-bar th {
            background-color: #c0392b; /* Dark red */
            color: white;
            padding: 15px;
            text-align: center;
        }

        .lottery-bar th:first-child {
            border-top-left-radius: 5px;
        }

        .lottery-bar th:last-child {
            border-top-right-radius: 5px;
        }

        h3 {
            color: #c0392b; /* Dark red header text */
        }

        .box-kqxs {
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 5px;
            padding: 20px;
        }

        .dropdown-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        #province-dropdown {
            padding: 10px;
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 5px;
        }

        .date-input-container {
            margin-left: 20px;
        }

        #datepicker {
            padding: 10px;
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 5px;
        }

        .button1 {
            background-color: #3498db; /* Blue button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button1:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }

        #ketqua {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        #ketqua td,
        #ketqua th {
            border: 1px solid #ddd; /* Light gray border */
            padding: 12px;
            text-align: center;
        }

        #ketqua th {
            background-color: #f9f9f9; /* Light gray background */
            width: 50px;
        }

    </style>

</head>
<body>
<header>
    <h2>Xổ Số Trực Tuyến</h2>
</header>
<div class="container" id="kqmb">
    <div id="sidebar">
        <table class="lottery-bar">
            <thead>
            <tr>
                <th>Kết quả xổ số miền nam ngày....</th>
            </tr>
            </thead>
        </table>
        <h3>Kết quả xổ số Miền Nam</h3>
        <div class="box-kqxs v1">

            <div class="box-so-left">
                <div class="dropdown-container">
                    <select id="province-dropdown">
                        <c:forEach var="province" items="${listProvince}">
                            <option value="${province}">${province}</option>
                        </c:forEach>
                    </select>

                    <div class="date-input-container">
                        <input type="date" id="datepicker" placeholder="Chọn ngày" min="1997-01-01" max="2030-12-31">
                    </div>
                    <button class="button button1 btn" onclick="viewHandle()">Xem kết quả</button>

                </div>


                <table width="100%" cellspacing="1" cellpadding="0" id="ketqua" >
                </table>

            </div>
        </div>
        <!-- Các menu khác có thể được thêm vào đây -->
    </div>
</div>
<%--<div id="container">--%>
<%--    <div id="sidebar">--%>
<%--        <table class="lottery-bar">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th>Kết quả xổ số miền nam ngày....</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--        </table>--%>
<%--        <h3>Kết quả xổ số Miền Nam</h3>--%>
<%--        <form id="lottery-form">--%>
<%--            <select name="province" id="province">--%>
<%--                <c:forEach var="province" items="${listProvince}">--%>
<%--                    <option value="${province}">${province}</option>--%>
<%--                </c:forEach>--%>
<%--                <!-- Add other provinces as needed -->--%>
<%--            </select>--%>

<%--            <input type="date" name="lotteryDate" id="lotteryDate">--%>

<%--            &lt;%&ndash;            <button type="button" onclick="submitForm()">Xem</button>&ndash;%&gt;--%>
<%--            <button class="button button1 btn" onclick="viewHandle()">Xem kết quả</button>--%>
<%--        </form>--%>
<%--        <!-- Các menu khác có thể được thêm vào đây -->--%>
<%--    </div>--%>
<%--    <div id="main-content">--%>
<%--        <img src="/img/topbg.jpg" alt="Xổ Số Hôm Nay">--%>
<%--        <h1>Xổ Số Hôm Nay</h1>--%>
<%--        <table class="lottery-results" >--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th colspan="2" class="center-text">Kết quả xổ số miền nam ngày....</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <table width="100%" cellspacing="1" cellpadding="0" id="ketqua" >--%>
<%--            </table>--%>
<%--        </table>--%>
<%--    </div>--%>
<%--</div>--%>
<footer>
    <p>&copy; 2023 Xổ Số Trực Tuyến. All rights reserved.</p>
</footer>
</body>

<script>

    const viewHandle = async ()=>{
        let kq = []
        for (let i = 0; i < 20; i++) {
            kq.push({
                name_prize :"Giải ",
                result:""})
        }
        const time =new Date(document.querySelector("#datepicker").value).getTime()
        const province = $('#province-dropdown').find(":selected").text();
        const res = await fetch('/', {
            method: 'POST',
            headers:{
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: new URLSearchParams({
                'time': time,
                'province': province
            })
        });
        const rs = await res.json();
        kq = rs.results?.reverse() ?? [];
        console.log(kq, rs.results?.reverse()) // kết quả lấy dề
        if(kq.length ==0)
            for (let i = 0; i < 20; i++) {
                kq.push({
                    name_prize :"Giải ",
                    result:""})
            }
        document.querySelector("#ketqua").innerHTML =
            `<tbody>
            <tr>
                <th class="prize-column">Giải tám</th>
                <th class="eighth">`+kq[0].result+`</th>
            </tr>
            <tr>
                <th class="prize-column">Giải bảy</th>
                <th>`+kq[1].result+`</th>
            </tr>
            <tr>
                <th class="prize-column" rowspan="3">Giải sáu</th>
                <th>`+kq[2].result+`</th>

            </tr>
            <tr>
                <th>`+kq[3].result+`</th>
            </tr>
            <tr>
                <th>`+kq[4].result+`</th>
            </tr>
            <tr>
                <th>Giải năm</th>
                <th>`+kq[5].result+`</th>
            </tr>
            <tr>
                <th class="prize-column" rowspan="7">Giải tư</th>
                <th>`+kq[6].result+`</th>

            </tr>
            <tr>
                <th>`+kq[7].result+`</th>
            </tr>
            <tr>
                <th>`+kq[8].result+`</th>
            </tr>
            <tr>
                <th>`+kq[9].result+`</th>
            </tr>
            <tr>
                <th>`+kq[10].result+`</th>
            </tr>
            <tr>
                <th>`+kq[11].result+`</th>
            </tr>
            <tr>
                <th>`+kq[12].result+`</th>
            </tr>
            <tr>
                <th class="prize-column" rowspan="2">Giải ba</th>
                <th>`+kq[13].result+`</th>
            </tr>
            <tr>
                <th colspan="3">`+kq[14].result+`</th>
            </tr>
            <tr>
                <th class="prize-column">Giải nhì</th>
                <th>`+kq[15].result+`</th>
            </tr>
            <tr>
                <th class="prize-column">Giải nhất</th>
                <th>`+kq[16].result+`</th>
            </tr>
            <tr>
                <th class="prize-column">Giải đặc biệt</th>
                <th class="special">`+kq[17].result+`</th>

            </tr>
            <!-- Các dòng kết quả xổ số sẽ được thêm vào đây -->
            </tbody>
        </table>`
    }
</script>

</html>