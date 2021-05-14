<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Đăng kí</title>
        <%@include file="/templates/fragments/header.jspf"%>
    </head>
    <style>
        .header {
        font-size: 3vw;
        color: var(--main-color);
        }
        .registered-packet .header {
        font-size: 2vw;
        }
        .registered-packet {
        background: #007991; /* fallback for old browsers */
        background: -webkit-linear-gradient(
        to right,
        #78ffd6,
        #007991
        ); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(
        to right,
        #78ffd6,
        #007991
        ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        border-top-left-radius: 15px !important;
        border-bottom-left-radius: 15px !important;
        }
        .btn-custom {
        background-color: var(--main-color);
        font-size: 125%;
        }
        .btn-custom-2 {
        border: 1px solid var(--main-color-2);
        }
        .fa-gift {
        font-size: 9vw;
        }
        @media (max-width: 768px) {
        .registered-packet {
        border-radius: 15px !important;
        }
        .fa-gift {
        font-size: 18vw;
        }
        .header {
        font-size: 5vw;
        }
        .registered-packet .header {
        font-size: 5vw;
        }
        }
    </style>
    <body>
        <div
            class="
            container
            my-5
            d-flex
            justify-content-center
            align-items-center
            px-0
            "
            >
            <div class="row w-100 h-100 border position-relative mx-3" style="border-radius: 15px">
                <a class="navbar-brand  d-flex align-items-center position-absolute" href="#">
                <img
                    src="${pageContext.request.contextPath}/static/img/logo.png"
                    width="30"
                    height="30"
                    alt="S-PBL"
                    />
                <small class="text-white"> S-PBL</small>
                </a>
                <div
                    class="
                    registered-packet
                    col-md-6 col-xl-4
                    p-4
                    border-end
                    rounded-0
                    d-flex
                    flex-column
                    align-items-center
                    justify-content-center
                    "
                    >
                    <i class="fas fa-gift text-white"></i>
                    <div class="header my-2 border-0 bg-transparent text-white">
                        XIN CHÀO,
                    </div>
                    <p class="text-white text-center">
                        Đăng kí để sử dụng tính năng của chúng tôi!
                    </p>
                </div>
                <div class="col-md-6 col-xl-8 ">
                    <div class="card pt-4 border-0">
                        <div class="card-header header border-0 bg-white m-auto">
                            Đăng kí
                        </div>
                        <div class="">
                            <form id="form" class="needs-validation" novalidate action="${pageContext.request.contextPath}/sign-up" method="POST">
                                <div class="row mb-3">
                                    <div class="col-10 form-floating offset-1 mb-3 px-0">
                                        <input
                                            name="fullname"
                                            type="text"
                                            class="form-control bg-white "
                                            id="inputFullname"
                                            value="${ customer.fullname }"
                                            required
                                            />
                                        <div id="inputFullnameFeedback" class="invalid-feedback">
                                            Tên không hợp lệ !
                                        </div>
                                        <label for="inputFullname">Họ tên (*)</label>
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <div class="col-10 form-floating offset-1 mb-3 px-0">
                                        <input
                                            name="username"
                                            type="text"
                                            class="${errorMessage != null ? 'form-control is-invalid bg-white' : 'form-control bg-white'}"
                                            id="inputUsername"
                                            value="${ customer.username }"
                                            pattern="[a-zA-Z0-9]{3,}" 
                                            required
                                            />
                                        <c:if test="${errorMessage != null}">
                                            <div id="inputUsernameFeedback" class="invalid-feedback">${errorMessage}</div>
                                        </c:if>
                                        <c:if test="${ empty errorMessage}">
                                            <div id="inputUsernameFeedback" class="invalid-feedback">Tên tài khoản không hợp lệ !</div>
                                        </c:if>
                                        <label for="inputUsername">Tên tài khoản (*)</label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-10 form-floating offset-1 mb-3 px-0">
                                        <input name="password" type="password"
                                            class="form-control bg-white"
                                            id="inputPwd" required minlength="6" maxlength="20" required />
                                        <div id="inputPasswordFeedback" class="invalid-feedback">Mật
                                            khẩu không hợp lệ !
                                        </div>
                                        <label for="inputPwd">Mật Khẩu (*)</label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-10 form-floating offset-1 mb-3 px-0">
                                        <input
                                            name="email"
                                            type="email"
                                            class="form-control bg-white"
                                            id="inputEmail"
                                            value="${ customer.email }"
                                            />
                                        <div id="inputEmailFeedback" class="invalid-feedback">
                                            Email không hợp lệ !
                                        </div>
                                        <label for="inputEmail">Email</label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-10 form-floating offset-1 mb-3 px-0">
                                        <input
                                            name="phone"
                                            type="text"
                                            class="form-control bg-white"
                                            id="inputPhonenumber"
                                            value="${ customer.phone }"
                                            pattern="^((\+84|84|0)[35789])\d{8}$"
                                            minlength="10"
                                            maxlength="12"
                                            />
                                        <div id="inputPhonenumberFeedback" class="invalid-feedback">
                                            Số điện thoại không hợp lệ !
                                        </div>
                                        <label for="inputPhonenumber">Số điện thoại</label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div
                                        class="
                                        action
                                        col-10
                                        offset-1
                                        d-flex
                                        flex-wrap
                                        justify-content-around
                                        "
                                        >
                                        <div class="mb-3 w-100">
                                            <div class="text-center p-t-12">
                                                <small class="txt1">Bạn đã có tài khoản ?</small>
                                                <br />
                                                <small class="txt1">
                                                Chuyển sang
                                                <a class="txt2" href="${ pageContext.request.contextPath }/login">
                                                Đăng nhập
                                                </a></small
                                                    >
                                            </div>
                                        </div>
                                        <button
                                            class="
                                            btn
                                            w-100
                                            btn-custom
                                            my-3
                                            rounded-pill
                                            text-white
                                            "
                                            id="btnLogin"
                                            type="submit"
                                            >
                                        Đăng kí
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
        integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
        crossorigin="anonymous"
        ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
        integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
        crossorigin="anonymous"
        ></script>
    <script>
        (function () {
          'use strict';
        
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.querySelectorAll('.needs-validation');
        
          // Loop over them and prevent submission
          Array.prototype.slice.call(forms).forEach(function (form) {
            form.addEventListener(
              'submit',
              function (event) {
                if (!form.checkValidity()) {
                  event.preventDefault();
                  event.stopPropagation();
                  
                }
        
                form.classList.add('was-validated');
              },
              false
            );
          });
        })();
        
    </script>
</html>