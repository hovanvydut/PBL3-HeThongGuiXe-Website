<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css" />

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

        .main-container {
            background-repeat: no-repeat;
            background-size: cover;
        }

        .form-control {
            width: 100%;
            display: block;
            margin-bottom: 10px;
            z-index: 1;
            position: relative;
        }

        .form-control:focus {
            border-color: rgb(104, 145, 162);
            outline: 0;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075),
                0 0 8px rgb(104, 145, 162);
            animation: anim-shadow 0.5s ease-in-out forwards;
        }

        @keyframes anim-shadow {
            from {
                box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            }

            to {
                box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            }
        }

        .txt1 {
            font-size: 13px;
            line-height: 1.5;
            color: #999999;
        }

        .txt2 {
            font-size: 13px;
            line-height: 1.5;
            color: #666666;
        }

        .btn-login {
            background-color: var(--main-color);
        }
    </style>

    <body>
        <div class="vh-100 vw-100 d-flex justify-content-center align-items-center main-container">
            
            <form action="${pageContext.request.contextPath}/login" method="POST"
                  class="px-sm-5 px-4 py-5 col-sm-8 col-11 mx-2 bg-white flex-md-row flex-column d-flex justify-content-center align-items-center shadow-lg rounded">
                
                <img class="col-6 img-fluid m-3 d-none d-md-block" src="${pageContext.request.contextPath}/static/img/search.jpg" alt="" srcset="" />
                
                <div class="col-12 col-md-6 m-3">
                    <h2 class="font-weight-bold">LOGIN</h2>
                    
                    <div class="mb-3 w-100">
                        <label for="exampleDropdownFormEmail1" class="form-label">Username</label>
                        <input name="username" type="text" class="${errorMessage != null ? 'form-control is-invalid' : 'form-control'}" id="exampleDropdownFormEmail1"
                               placeholder="vy12345" required value="${username}"/>
                        <c:if test="${errorMessage != null}">
                            <div class="invalid-feedback">
                                ${errorMessage}
                            </div>
                        </c:if>
                        
                    </div>
                               
                    <div class="mb-3 w-100">
                        <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                        <input name="password" type="password" class="form-control" id="exampleDropdownFormPassword1"
                               placeholder="Password" />
                    </div>
                               
                    <div class="mb-3 w-100">
                        <div class="text-center p-t-12">
                            <span class="txt1"> Forgot </span>
                            <a class="txt2" href="#"> Username / Password? </a>
                        </div>
                    </div>
                               
                    <button type="submit" class="btn btn-login w-100">Sign in</button>
                    
                </div>
                               
            </form>
                               
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
            integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
            integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
    crossorigin="anonymous"></script>

</html>
