<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta content="Codescandy" name="author" />
      <title>Homepage v1 - eCommerce HTML Template - FreshCart</title>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

      <link href="./assets/libs/slick-carousel/slick/slick.css" rel="stylesheet" />
      <link href="./assets/libs/slick-carousel/slick/slick-theme.css" rel="stylesheet" />
      <link href="./assets/libs/tiny-slider/dist/tiny-slider.css" rel="stylesheet" />

      <!-- Favicon icon-->
      <link rel="shortcut icon" type="image/x-icon" href="./assets/images/favicon/favicon.ico" />

      <!-- Libs CSS -->
      <link href="./assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
      <link href="./assets/libs/feather-webfont/dist/feather-icons.css" rel="stylesheet" />
      <link href="./assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet" />

      <!-- Theme CSS -->
      <link rel="stylesheet" href="./assets/css/theme.min.css" />
   </head>

   <body>

        <script type="text/javascript">
            $(document).ready(function() {
                $.ajax({
                    url:'/mainListSection',
                    type:'POST',
                    dataType:'json',
                    success:function(response) {

                        var status = response.status;
                        var listSection = response.data.listSection;

                        console.log("Status:", status);
                        console.log("Server response:", JSON.stringify(response, null, 2));

                        var navSecName = $('#navSecName');
                        navSecName.empty();

                        $.each(listSection, function(index, section) {
                            var sectionId = section.sectionId;
                            var link = $('<a class="nav-link" href="listItemDTLBySection?sectionId=' + sectionId + '">' + section.secName + ' <span class="visually-hidden">(current)</span></a>');


                            var listSecName = $('<li class="nav-item dropdown w-100 w-lg-auto"></li>');

                            listSecName.append(link);
                             navSecName.append(listSecName);

                        });
                    },
                    error:function(request, status, error){
                        console.log("listSection error code:"+request.status+"\n"+
                                    "message:"+request.responseText+"\n"+
                                    "error:"+error);
                    }
                });
            });
        </script>

      <!-- navbar -->
      <div class="border-bottom">
         <div class="bg-light py-1">
            <div class="container">
               <div class="row">
                  <div class="col-md-6 col-12 text-center text-md-start"><span>Super Value Deals - Save more with coupons</span></div>
               </div>
            </div>
         </div>
         <div class="py-5">
            <div class="container">
               <div class="row w-100 align-items-center gx-lg-2 gx-0">
                  <div class="col-xxl-2 col-lg-3 col-md-6 col-5">
                     <a class="navbar-brand d-none d-lg-block" href="./index.html">
                        <img src="./assets/images/logo/freshcart-logo.svg" alt="eCommerce HTML Template" />
                     </a>
                     <div class="d-flex justify-content-between w-100 d-lg-none">
                        <a class="navbar-brand" href="./index.html">
                           <img src="./assets/images/logo/freshcart-logo.svg" alt="eCommerce HTML Template" />
                        </a>
                     </div>
                  </div>
                  <div class="col-xxl-5 col-lg-5 d-none d-lg-block">
                     <form action="#">
                        <div class="input-group">
                           <input class="form-control rounded" type="search" placeholder="Search for products" />
                           <span class="input-group-append">
                              <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="button">
                                 <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    width="16"
                                    height="16"
                                    viewBox="0 0 24 24"
                                    fill="none"
                                    stroke="currentColor"
                                    stroke-width="2"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    class="feather feather-search">
                                    <circle cx="11" cy="11" r="8"></circle>
                                    <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                 </svg>
                              </button>
                           </span>
                        </div>
                     </form>
                  </div>
                  <div class="col-md-2 col-xxl-3 d-none d-lg-block">
                  </div>
                  <div class="col-lg-2 col-xxl-2 text-end col-md-6 col-7">
                     <div class="list-inline">
                        <div class="list-inline-item me-5">
                           <a href="./pages/shop-wishlist.html" class="text-muted position-relative">
                              <svg
                                 xmlns="http://www.w3.org/2000/svg"
                                 width="20"
                                 height="20"
                                 viewBox="0 0 24 24"
                                 fill="none"
                                 stroke="currentColor"
                                 stroke-width="2"
                                 stroke-linecap="round"
                                 stroke-linejoin="round"
                                 class="feather feather-heart">
                                 <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                              </svg>
                              <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-success">
                                 5
                                 <span class="visually-hidden">unread messages</span>
                              </span>
                           </a>
                        </div>
                        <div class="list-inline-item me-5">
                           <a href="#" class="text-muted" data-bs-toggle="modal" data-bs-target="#userModal">
                              <svg
                                 xmlns="http://www.w3.org/2000/svg"
                                 width="20"
                                 height="20"
                                 viewBox="0 0 24 24"
                                 fill="none"
                                 stroke="currentColor"
                                 stroke-width="2"
                                 stroke-linecap="round"
                                 stroke-linejoin="round"
                                 class="feather feather-user">
                                 <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                 <circle cx="12" cy="7" r="4"></circle>
                              </svg>
                           </a>
                        </div>
                        <div class="list-inline-item me-5 me-lg-0">
                           <a class="text-muted position-relative" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" href="#offcanvasExample" role="button" aria-controls="offcanvasRight">
                              <svg
                                 xmlns="http://www.w3.org/2000/svg"
                                 width="20"
                                 height="20"
                                 viewBox="0 0 24 24"
                                 fill="none"
                                 stroke="currentColor"
                                 stroke-width="2"
                                 stroke-linecap="round"
                                 stroke-linejoin="round"
                                 class="feather feather-shopping-bag">
                                 <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                 <line x1="3" y1="6" x2="21" y2="6"></line>
                                 <path d="M16 10a4 4 0 0 1-8 0"></path>
                              </svg>
                              <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-success">
                                 1
                                 <span class="visually-hidden">unread messages</span>
                              </span>
                           </a>
                        </div>
                        <div class="list-inline-item d-inline-block d-lg-none">
                           <!-- Button -->
                           <button
                              class="navbar-toggler collapsed"
                              type="button"
                              data-bs-toggle="offcanvas"
                              data-bs-target="#navbar-default"
                              aria-controls="navbar-default"
                              aria-label="Toggle navigation">
                              <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-text-indent-left text-primary" viewBox="0 0 16 16">
                                 <path
                                    d="M2 3.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm.646 2.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1 0 .708l-2 2a.5.5 0 0 1-.708-.708L4.293 8 2.646 6.354a.5.5 0 0 1 0-.708zM7 6.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 3a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm-5 3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
                              </svg>
                           </button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <nav class="navbar navbar-expand-lg navbar-light navbar-default py-0 pb-lg-4" aria-label="Offcanvas navbar large">
            <div class="container">
               <div class="offcanvas offcanvas-start" tabindex="-1" id="navbar-default" aria-labelledby="navbar-defaultLabel">
                  <div class="offcanvas-header pb-1">
                     <a href="./index.html"><img src="./assets/images/logo/freshcart-logo.svg" alt="eCommerce HTML Template" /></a>
                     <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                  </div>
                  <div class="offcanvas-body">
                     <div class="d-block d-lg-none mb-4">
                        <form action="#">
                           <div class="input-group">
                              <input class="form-control rounded" type="search" placeholder="Search for products" />
                              <span class="input-group-append">
                                 <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="button">
                                    <svg
                                       xmlns="http://www.w3.org/2000/svg"
                                       width="16"
                                       height="16"
                                       viewBox="0 0 24 24"
                                       fill="none"
                                       stroke="currentColor"
                                       stroke-width="2"
                                       stroke-linecap="round"
                                       stroke-linejoin="round"
                                       class="feather feather-search">
                                       <circle cx="11" cy="11" r="8"></circle>
                                       <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                    </svg>
                                 </button>
                              </span>
                           </div>
                        </form>
                        <div class="mt-2">
                           <button type="button" class="btn btn-outline-gray-400 text-muted w-100" data-bs-toggle="modal" data-bs-target="#locationModal">
                              <i class="feather-icon icon-map-pin me-2"></i>
                              Pick Location
                           </button>
                        </div>
                     </div>
                     <div class="d-block d-lg-none mb-4">

                     </div>
                     <div>
                        <ul id="navSecName" class="navbar-nav align-items-center">

                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </nav>
          <!-- Modal -->
          <div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
             <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content p-4">
                   <div class="modal-header border-0">
                      <h5 class="modal-title fs-3 fw-bold" id="userModalLabel">Sign In</h5>

                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                   </div>
                   <div class="modal-body">
                      <form action="oneCustomerForSignIn" class="needs-validation" novalidate method="post">
                         <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input name="email" type="email" class="form-control" id="email" placeholder="Enter Email address" required />
                            <div class="invalid-feedback">Please enter email.</div>
                         </div>
                         <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" required />
                            <div class="invalid-feedback">Please enter password.</div>
                            <small class="form-text">
                               By Signup, you agree to our
                               <a href="#!">Terms of Service</a>
                               &
                               <a href="#!">Privacy Policy</a>
                            </small>
                         </div>
                         <button type="submit" class="btn btn-primary" type="submit">Sign In</button>
                      </form>
                   </div>
                   <div class="modal-footer border-0 justify-content-center">
                      Don't have an account?
                      <a href="#">Sign up</a>
                   </div>
                </div>
             </div>
          </div>
      </div>
        <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <%
            String loginError = (String) session.getAttribute("loginError");
            if (loginError != null) {
                session.removeAttribute("loginError");
        %>
            <script>
                alert("<%= loginError %>");
            </script>
        <%
            }
        %>