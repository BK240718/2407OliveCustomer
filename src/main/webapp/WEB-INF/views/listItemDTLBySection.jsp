<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta content="Codescandy" name="author" />
        <title>shop Fullwidth eCommerce HTML Template - FreshCart</title>
        <link href="../assets/libs/tiny-slider/dist/tiny-slider.css" rel="stylesheet" />
        <!-- Favicon icon-->
        <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon/favicon.ico" />

        <!-- Libs CSS -->
        <link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
        <link href="../assets/libs/feather-webfont/dist/feather-icons.css" rel="stylesheet" />
        <link href="../assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet" />

        <!-- Theme CSS -->
        <link rel="stylesheet" href="../assets/css/theme.min.css" />
   </head>
   <body>
        <main>
             <!-- section -->
             <section class="mt-8">
                <div class="container">
                   <!-- row -->
                   <div class="row">
                      <div class="col-xxl-8 col-xl-7">
                         <!-- hero slider -->
                         <div class="hero-slider">
                            <div style="background: url(../assets/images/slider/slider-image-1.jpg) no-repeat; background-size: cover; border-radius: 0.5rem">
                               <div class="ps-lg-12 py-lg-16 col-xxl-7 col-lg-9 py-14 px-8 text-xs-center">
                                  <!-- badge -->
                                  <div class="d-flex align-items-center mb-4">
                                     <span>Exclusive Offer</span>
                                     <span class="badge bg-danger ms-2">15%</span>
                                  </div>
                                  <!-- title -->
                                  <h2 class="text-dark display-5 fw-bold mb-3">Best Online Deals, Free Stuff</h2>
                                  <p class="fs-5 text-dark">Only on this week... Don’t miss</p>
                                  <!-- price -->
                                  <div class="mb-4 mt-4">
                                     <span class="text-dark">
                                        Start from
                                        <span class="fs-4 text-danger ms-1">$5.99</span>
                                     </span>
                                  </div>
                                  <!-- btn -->
                                  <a href="#!" class="btn btn-primary">
                                     Get Best Deal
                                     <i class="feather-icon icon-arrow-right ms-1"></i>
                                  </a>
                               </div>
                            </div>
                            <!-- img -->
                            <div style="background: url(../assets/images/slider/slider-image-2.jpg) no-repeat; background-size: cover; border-radius: 0.5rem">
                               <div class="ps-lg-12 py-lg-16 col-xxl-7 col-lg-9 py-14 ps-8 text-xs-center">
                                  <!-- badge -->
                                  <div class="d-flex align-items-center mb-4">
                                     <span>Exclusive Offer</span>
                                     <span class="badge bg-danger ms-2">35%</span>
                                  </div>

                                  <!-- title -->
                                  <h2 class="text-dark display-5 fw-bold mb-3">Chocozay wafer-rolls Deals</h2>
                                  <!-- para -->
                                  <p class="fs-5 text-dark">Only on this week... Don’t miss</p>
                                  <div class="mb-4 mt-4">
                                     <span class="text-dark">
                                        Start from
                                        <span class="fs-4 text-danger ms-1">$34.99</span>
                                     </span>
                                  </div>
                                  <!-- btn -->
                                  <a href="#!" class="btn btn-primary">
                                     Shop Deals Now
                                     <i class="feather-icon icon-arrow-right ms-1"></i>
                                  </a>
                               </div>
                            </div>
                            <!-- img -->
                            <div style="background: url(../assets/images/slider/slider-image-3.jpg) no-repeat; background-size: cover; border-radius: 0.5rem">
                               <div class="ps-lg-12 py-lg-16 col-xxl-7 col-lg-9 py-14 ps-8 text-xs-center">
                                  <!-- badge -->
                                  <div class="d-flex align-items-center mb-4">
                                     <span>Exclusive Offer</span>
                                     <span class="badge bg-danger ms-2">20%</span>
                                  </div>
                                  <!-- title -->
                                  <h2 class="text-dark display-5 fw-bold mb-3">Cokoladni Kolutici Lasta</h2>
                                  <!-- para -->
                                  <p class="fs-5 text-dark">Only on this week... Don’t miss</p>
                                  <div class="mb-4 mt-4">
                                     <span class="text-dark">
                                        Start from
                                        <span class="fs-4 text-primary ms-1">$5.99</span>
                                     </span>
                                  </div>
                                  <!-- btn -->
                                  <a href="#!" class="btn btn-primary">
                                     Shop This Week Offer
                                     <i class="feather-icon icon-arrow-right ms-1"></i>
                                  </a>
                               </div>
                            </div>
                         </div>
                      </div>
                      <div class="col-xxl-4 col-xl-5 col-12 d-lg-flex d-xl-block gap-3 gap-xl-0">
                         <div class="flex-fill px-8 py-9 mb-6 rounded" style="background: url(../assets/images/banner/ad-banner-1.jpg) no-repeat; background-size: cover">
                            <div>
                               <h3 class="mb-0 fw-bold">
                                  10% cashback on
                                  <br />
                                  personal care
                               </h3>
                               <div class="mt-4 mb-5 fs-5">
                                  <p class="mb-0">Max cashback: $12</p>
                                  <span>
                                     Code:
                                     <span class="fw-bold text-dark">CARE12</span>
                                  </span>
                               </div>
                               <a href="#" class="btn btn-dark">Shop Now</a>
                            </div>
                         </div>

                         <div class="flex-fill px-8 py-8 rounded" style="background: url(../assets/images/banner/ad-banner-2.jpg) no-repeat; background-size: cover">
                            <!-- Banner Content -->
                            <div>
                               <!-- Banner Content -->
                               <h3 class="fw-bold mb-3">
                                  Say yes to
                                  <br />
                                  season’s fresh
                               </h3>
                               <div class="mt-4 mb-5 fs-5">
                                  <p class="fs-5 mb-0">
                                     Refresh your day
                                     <br />
                                     the fruity way
                                  </p>
                               </div>

                               <a href="#" class="btn btn-dark">Shop Now</a>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
             </section>

             <!-- section -->
             <section class="mt-8 mb-lg-14 mb-8">
                <div class="container">
                   <!-- row -->
                   <div class="row">
                      <!-- col -->
                      <div class="col-lg-12">

                         <!-- list icon -->
                         <div class="d-lg-flex justify-content-between align-items-center">
                            <div>
                               <p class="mb-3 mb-md-0">
                                  <span class="text-dark">24</span>
                                  Products found
                               </p>
                            </div>
                            <!-- icon -->
                            <div class="d-md-flex justify-content-between align-items-center">
                               <div>
                                  <a href="shop-list.html" class="text-muted me-3"><i class="bi bi-list-ul"></i></a>
                                  <a href="shop-grid.html" class="me-3 active"><i class="bi bi-grid"></i></a>
                                  <a href="shop-grid-3-column.html" class="me-3 text-muted"><i class="bi bi-grid-3x3-gap"></i></a>
                               </div>
                               <div class="d-flex mt-2 mt-lg-0">
                                  <div class="me-2 flex-grow-1">
                                     <!-- select option -->
                                     <select class="form-select">
                                        <option selected>Show: 50</option>
                                        <option value="10">10</option>
                                        <option value="20">20</option>
                                        <option value="30">30</option>
                                     </select>
                                  </div>
                                  <div>
                                     <!-- select option -->
                                     <select class="form-select">
                                        <option selected>Sort by: Featured</option>
                                        <option value="Low to High">Price: Low to High</option>
                                        <option value="High to Low">Price: High to Low</option>
                                        <option value="Release Date">Release Date</option>
                                        <option value="Avg. Rating">Avg. Rating</option>
                                     </select>
                                  </div>
                               </div>
                            </div>
                         </div>
                         <div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3 mt-2">
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <!-- badge -->
                                     <div class="text-center position-relative">
                                        <div class="position-absolute top-0 start-0">
                                           <span class="badge bg-danger">Sale</span>
                                        </div>
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-1.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Snack & Munchies</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Haldiram's Sev Bhujia</a></h2>
                                     <div>
                                        <!-- rating -->
                                        <small class="text-warning">
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                        </small>
                                        <span class="text-muted small">4.5(149)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                           <span class="text-dark">$18</span>
                                           <span class="text-decoration-line-through text-muted">$24</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-2.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Bakery & Biscuits</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">NutriChoice Digestive</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                        </small>
                                        <span class="text-muted small">4.5 (25)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div><span class="text-dark">$24</span></div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-3.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Bakery & Biscuits</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Cadbury 5 Star Chocolate</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                        </small>
                                        <span class="text-muted small">5 (469)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                           <span class="text-dark">$32</span>
                                           <span class="text-decoration-line-through text-muted">$35</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-4.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Snack & Munchies</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Onion Flavour Potato</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                           <i class="bi bi-star"></i>
                                        </small>
                                        <span class="text-muted small">3.5 (456)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                           <span class="text-dark">$3</span>
                                           <span class="text-decoration-line-through text-muted">$5</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-5.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Instant Food</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Salted Instant Popcorn</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                        </small>
                                        <span class="text-muted small">4.5 (39)</span>
                                     </div>
                                     <div class="d-flex justify-content-between mt-4">
                                        <div>
                                           <span class="text-dark">$13</span>
                                           <span class="text-decoration-line-through text-muted">$18</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <!-- badge -->
                                     <div class="text-center position-relative">
                                        <div class="position-absolute top-0">
                                           <span class="badge bg-danger">Sale</span>
                                        </div>

                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-6.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Dairy, Bread & Eggs</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Blueberry Greek Yogurt</a></h2>
                                     <div>
                                        <!-- rating -->
                                        <small class="text-warning">
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                        </small>
                                        <span class="text-muted small">4.5 (189)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                           <span class="text-dark">$18</span>
                                           <span class="text-decoration-line-through text-muted">$24</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-7.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Dairy, Bread & Eggs</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Britannia Cheese Slices</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                        </small>
                                        <span class="text-muted small">5 (345)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div><span class="text-dark">$24</span></div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-8.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Instant Food</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Kellogg's Original Cereals</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                        </small>
                                        <span class="text-muted small">4 (90)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                           <span class="text-dark">$32</span>
                                           <span class="text-decoration-line-through text-muted">$35</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-9.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Snack & Munchies</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Slurrp Millet Chocolate</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                        </small>
                                        <span class="text-muted small">4.5 (67)</span>
                                     </div>
                                     <!-- price -->
                                     <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                           <span class="text-dark">$3</span>
                                           <span class="text-decoration-line-through text-muted">$5</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                            <!-- col -->
                            <div class="col">
                               <!-- card product -->
                               <div class="card card-product">
                                  <div class="card-body">
                                     <div class="text-center position-relative">
                                        <a href="shop-single.html">
                                           <!-- img -->
                                           <img src="../assets/images/products/product-img-10.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                        </a>
                                        <!-- action btn -->
                                        <div class="card-product-action">
                                           <a href="#!" class="btn-action" data-bs-toggle="modal" data-bs-target="#quickViewModal">
                                              <i class="bi bi-eye" data-bs-toggle="tooltip" data-bs-html="true" title="Quick View"></i>
                                           </a>
                                           <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                           <a href="#!" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Compare"><i class="bi bi-arrow-left-right"></i></a>
                                        </div>
                                     </div>
                                     <!-- heading -->
                                     <div class="text-small mb-1">
                                        <a href="#!" class="text-decoration-none text-muted"><small>Dairy, Bread & Eggs</small></a>
                                     </div>
                                     <h2 class="fs-6"><a href="shop-single.html" class="text-inherit text-decoration-none">Amul Butter - 500 g</a></h2>
                                     <!-- rating -->
                                     <div class="text-warning">
                                        <small>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-fill"></i>
                                           <i class="bi bi-star-half"></i>
                                           <i class="bi bi-star"></i>
                                        </small>
                                        <span class="text-muted small">3.5 (89)</span>
                                     </div>
                                     <div class="d-flex justify-content-between mt-4">
                                        <div>
                                           <span class="text-dark">$13</span>
                                           <span class="text-decoration-line-through text-muted">$18</span>
                                        </div>
                                        <!-- btn -->
                                        <div>
                                           <a href="#!" class="btn btn-primary btn-sm">
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
                                                 class="feather feather-plus">
                                                 <line x1="12" y1="5" x2="12" y2="19"></line>
                                                 <line x1="5" y1="12" x2="19" y2="12"></line>
                                              </svg>
                                              Add
                                           </a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                         </div>
                         <!-- row -->
                         <div class="row mt-8">
                            <div class="col">
                               <!-- nav -->
                               <nav>
                                  <ul class="pagination">
                                     <li class="page-item disabled">
                                        <a class="page-link mx-1" href="#" aria-label="Previous">
                                           <i class="feather-icon icon-chevron-left"></i>
                                        </a>
                                     </li>
                                     <li class="page-item"><a class="page-link mx-1 active" href="#">1</a></li>
                                     <li class="page-item"><a class="page-link mx-1" href="#">2</a></li>

                                     <li class="page-item"><a class="page-link mx-1" href="#">...</a></li>
                                     <li class="page-item"><a class="page-link mx-1" href="#">12</a></li>
                                     <li class="page-item">
                                        <a class="page-link mx-1" href="#" aria-label="Next">
                                           <i class="feather-icon icon-chevron-right"></i>
                                        </a>
                                     </li>
                                  </ul>
                               </nav>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
             </section>
      </main>

        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
      <!-- Javascript-->
        <!-- Libs JS -->
        <!-- <script src="../assets/libs/jquery/dist/jquery.min.js"></script> -->
        <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

        <!-- Theme JS -->
        <script src="../assets/js/theme.min.js"></script>

        <script src="../assets/js/vendors/jquery.min.js"></script>
          <script src="../assets/libs/slick-carousel/slick/slick.min.js"></script>
          <script src="../assets/js/vendors/slick-slider.js"></script>
        <script src="../assets/libs/tiny-slider/dist/min/tiny-slider.js"></script>
        <script src="../assets/js/vendors/tns-slider.js"></script>
        <script src="../assets/js/vendors/zoom.js"></script>
        <script src="../assets/js/vendors/validation.js"></script>
   </body>
</html>