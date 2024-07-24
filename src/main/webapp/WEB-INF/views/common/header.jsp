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
                    url:'/mainSecName',
                    type:'POST',
                    dataType:'json',
                    success:function(response) {

                        var status = response.status;
                        var mainSecName = response.data.mainSecName;

                        console.log("Status:", status);
                        console.log("Server response:", JSON.stringify(response, null, 2));

                        var navSecName = $('#navSecName');


                        navSecName.empty();

                        $.each(mainSecName, function(index, section) {
                            var listSecName = $('<li class="nav-item dropdown w-100 w-lg-auto"></li>');
                            var link = $('<a class="nav-link" href="#">' + section.secName + ' <span class="visually-hidden">(current)</span></a>');
                            listSecName.append(link);
                            navSecName.append(listSecName);
                        });
                    },
                    error:function(request, status, error){
                        console.log("mainSecName error code:"+request.status+"\n"+
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
                  <div class="col-6 text-end d-none d-md-block">
                     <div class="dropdown selectBox">
                        <a class="dropdown-toggle selectValue text-reset" href="javascript:void(0)" data-bs-toggle="dropdown" aria-expanded="false">
                           <span class="me-2">
                              <svg width="16" height="13" viewBox="0 0 16 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                 <g clip-path="url(#selectedlang)">
                                    <path d="M0 0.5H16V12.5H0V0.5Z" fill="#012169" />
                                    <path d="M1.875 0.5L7.975 5.025L14.05 0.5H16V2.05L10 6.525L16 10.975V12.5H14L8 8.025L2.025 12.5H0V11L5.975 6.55L0 2.1V0.5H1.875Z" fill="white" />
                                    <path
                                       d="M10.6 7.525L16 11.5V12.5L9.225 7.525H10.6ZM6 8.025L6.15 8.9L1.35 12.5H0L6 8.025ZM16 0.5V0.575L9.775 5.275L9.825 4.175L14.75 0.5H16ZM0 0.5L5.975 4.9H4.475L0 1.55V0.5Z"
                                       fill="#C8102E" />
                                    <path d="M6.025 0.5V12.5H10.025V0.5H6.025ZM0 4.5V8.5H16V4.5H0Z" fill="white" />
                                    <path d="M0 5.325V7.725H16V5.325H0ZM6.825 0.5V12.5H9.225V0.5H6.825Z" fill="#C8102E" />
                                 </g>
                                 <defs>
                                    <clipPath id="selectedlang">
                                       <rect width="16" height="12" fill="white" transform="translate(0 0.5)" />
                                    </clipPath>
                                 </defs>
                              </svg>
                           </span>
                           English
                        </a>

                        <ul class="dropdown-menu">
                           <li>
                              <a class="dropdown-item" href="javascript:void(0)">
                                 <span class="me-2">
                                    <svg width="16" height="13" viewBox="0 0 16 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <g clip-path="url(#selectedlang)">
                                          <path d="M0 0.5H16V12.5H0V0.5Z" fill="#012169" />
                                          <path d="M1.875 0.5L7.975 5.025L14.05 0.5H16V2.05L10 6.525L16 10.975V12.5H14L8 8.025L2.025 12.5H0V11L5.975 6.55L0 2.1V0.5H1.875Z" fill="white" />
                                          <path
                                             d="M10.6 7.525L16 11.5V12.5L9.225 7.525H10.6ZM6 8.025L6.15 8.9L1.35 12.5H0L6 8.025ZM16 0.5V0.575L9.775 5.275L9.825 4.175L14.75 0.5H16ZM0 0.5L5.975 4.9H4.475L0 1.55V0.5Z"
                                             fill="#C8102E" />
                                          <path d="M6.025 0.5V12.5H10.025V0.5H6.025ZM0 4.5V8.5H16V4.5H0Z" fill="white" />
                                          <path d="M0 5.325V7.725H16V5.325H0ZM6.825 0.5V12.5H9.225V0.5H6.825Z" fill="#C8102E" />
                                       </g>
                                       <defs>
                                          <clipPath id="selectedlang">
                                             <rect width="16" height="12" fill="white" transform="translate(0 0.5)" />
                                          </clipPath>
                                       </defs>
                                    </svg>
                                 </span>
                                 English
                              </a>
                           </li>
                           <li>
                              <a class="dropdown-item" href="javascript:void(0)">
                                 <span class="me-2">
                                    <svg width="16" height="13" viewBox="0 0 16 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <g clip-path="url(#clip0_5543_19751)">
                                          <path d="M0 8.5H16V12.5H0V8.5Z" fill="#FFCE00" />
                                          <path d="M0 0.5H16V4.5H0V0.5Z" fill="black" />
                                          <path d="M0 4.5H16V8.5H0V4.5Z" fill="#DD0000" />
                                       </g>
                                       <defs>
                                          <clipPath id="clip0_5543_19751">
                                             <rect width="16" height="12" fill="white" transform="translate(0 0.5)" />
                                          </clipPath>
                                       </defs>
                                    </svg>
                                 </span>
                                 Deutsch
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
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
                     <!-- Button trigger modal -->
                     <button type="button" class="btn btn-outline-gray-400 text-muted" data-bs-toggle="modal" data-bs-target="#locationModal">
                        <i class="feather-icon icon-map-pin me-2"></i>
                        Location
                     </button>
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
                           <a href="#!" class="text-muted" data-bs-toggle="modal" data-bs-target="#userModal">
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
                     <div class="dropdown me-3 d-none d-lg-block">


                     </div>
                     <div>
                        <ul id="navSecName" class="navbar-nav align-items-center">

                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </nav>
      </div>