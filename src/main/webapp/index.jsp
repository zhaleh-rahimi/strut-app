<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="S" %>
<html>
<head>
    <style type="text/css">
        @font-face {
            font-family: farsiFont;
            src: url(/cssfile/yekan.otf);
        url(/cssfile/yekan.ttf);
        }

        div {
            font-family: farsiFont;
            font-size: large;
        }

        * {
            margin: 0;
            padding: 0;
        }

        html {
            height: 100%;
            font-size: large;
        }

        body {
            height: 100%;
            background-color: #e1e2e4;
            direction: rtl;
        }

        .cleaner {
            clear: both;
            height: 0;
            font-size: 0;
            visibility: hidden;
        }

        #wrapper {
            width: 70%;
            margin: 60px auto 0 auto;
            height: 90%;
            horiz-align: center;
        }

        .title {
            background-color: #003333;
            margin: 5% 10% 0 10%;
            height: 80px;
            text-align: center;
            padding-top: 20px;
        }

        .title h1 {
            color: white;
        }

        .content {
            margin: 19px auto 0 auto;
        }

        .layer-out {
            background-color: #df6c4f;
            border-radius: 5em;
            border-color: #3c948b;
            padding: 2em 5% 5em 5%;
            margin: 40px 40px 40px 40px;
            text-align: center;

        }

        .layer {
            background-color: #3c948b;
            padding: 2em 5% 5em 5%;
            margin: 40px 40px 40px 40px;

        }

        .layer-in {
            background-color: #FFFFFF;
            border-radius: 1em;
            padding: 2em 5% 5em 5%;
            margin: 40px 40px 40px 40px;
            text-align: center;

        }

        .layer-in p {
            line-height: 1.6;
            margin: 0 0 10px 25px;
            color: #3c948b;
            font-size: x-large;
            display: ruby;
        }

        .form {
            display: inline;
            alignment: center;
        }

        .button {
            background-color: #df6c4f;
            border-color: #df6c4f;
            color: white;
            padding: 15px 20px;
            margin: 10px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 15px;
            font-family: farsiFont;

        }

        .button:hover {
            background-color: white;
            color: #df6c4f;
        }

        table {
            width: 100%;
        }

        th, td {
            height: 50px;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <div class="content">
        <div class="layer-out">
            <div class="layer">
                <div class="layer-in">
                    <br>
                    <p style="color: #3c948b">لطفا اطلاعات مشتری را وارد نمایید.</p>
                    <br>
                    <S:form action="register" method="POST" >
                        <S:textfield name="firstName" label="نام" ></S:textfield>
                        <S:textfield name="lastName" label="نام خانوادگی" ></S:textfield>
                        <S:textfield name="fatherName" label="نام پدر" ></S:textfield>
                        <S:textfield name="dateOfBirth" label="تاریخ تولد" ></S:textfield>
                        <S:textfield name="nationalCode" label="کد ملی"></S:textfield>
                        <S:submit value=" ثبت مشتری" ></S:submit>

                    </S:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>