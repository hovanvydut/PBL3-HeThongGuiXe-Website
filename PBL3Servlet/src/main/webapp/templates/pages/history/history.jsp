<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tra cứu</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />

</head>
<style>
    * {
        font-family: var(--main-font);
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    a {
        text-decoration: none;
    }

    button {
        background-color: var(--main-color);
    }

    .btn-packet {
        background-color: var(--main-color);
        color: white;
    }

    .check_month {
        border: 1px solid var(--main-color);
        color: var(--main-color);
    }

    .far {
        color: var(--main-color);
    }
</style>

<body>
    
    <!-- import navigation fragment -->
    <%@include file="/templates/fragments/navigation.jsp" %>
    
    <div
        class="vw-100 d-flex flex-column justify-content-center align-items-center main-container px-md-5 px-2 py-md-5 py-2">
        <h2 class="font-weight-bold text-uppercase header my-3">Tra Cứu</h2>
        <div
            class="card w-75 px-md-5 px-2 py-3 py-md-5 mb-5 bg-white d-flex flex-wrap flex-row justify-content-center align-items-start shadow-lg rounded">
            <div class="col-lg-6 col-12 p-2">
                <div class="px-2">
                    <h3 class="text-left header">Chọn tháng tra cứu</h3>
                    <ul class="check_list d-flex flex-wrap p-0 my-3">
                        <li class="check_month m-1 btn">Tháng 11/2020</li>
                        <li class="check_month m-1 btn">Tháng 12/2020</li>
                        <li class="check_month m-1 btn">Tháng 01/2021</li>
                        <li class="check_month m-1 btn">Tháng 02/2021</li>
                        <li class="check_month m-1 btn">Tháng 03/2021</li>
                        <li class="check_month m-1 btn check__item--selected">
                            Tháng 04/2021
                        </li>
                    </ul>
                </div>
                <div class="px-2">
                    <div class="card border-0">
                        <div class="card-body p-0">
                            <h5 class="header">Tổng số lần ra vào</h5>
                            <div class=" d-flex flex-row justify-content-between py-2">
                                <div>
                                    <span class=""> 52</span>

                                </div>
                                <a href="javascript:void(0)" class=" px-2">Chi tiết</a>
                            </div>
                            <a href="#" class="btn btn-packet border-1 w-100">Tra cứu chi tiết</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-12 p-2">
                <h3 class="header px-2 px-lg-0">Lịch sử</h3>
                <ul class="list-group my-3 px-2 px-lg-0">
                    <li class="list-group-item mb-md-2 mb-1 rounded border-1">
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkin</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                        <div class="d-flex  flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkout</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                    </li>
                    <li class="list-group-item mb-md-2 mb-1 rounded border-1">
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkin</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkout</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                    </li>
                    <li class="list-group-item mb-md-2 mb-1 rounded border-1">
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkin</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkout</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                    </li>
                    <li class="list-group-item mb-md-2 mb-1 rounded border-1">
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkin</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between">
                            <i class="far fa-clock"> Checkout</i>
                            <span>Thu Oct 29 2015 08:46:30</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</html>
