<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta content="Codescandy" name="author" />
      <title>Shop Single v2 eCommerce HTML Template - FreshCart</title>
      <link href="../assets/libs/dropzone/dist/min/dropzone.min.css" rel="stylesheet" />
      <link href="../assets/libs/tiny-slider/dist/tiny-slider.css" rel="stylesheet" />
      <link href="../assets/libs/slick-carousel/slick/slick.css" rel="stylesheet" />
      <link href="../assets/libs/slick-carousel/slick/slick-theme.css" rel="stylesheet" />
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
         <section class="mt-8">
            <div class="container">
               <div class="row">
                  <div class="col-md-5 col-xl-6">
                     <div class="slider slider-for">
                        <div>
                           <div class="zoom" onmousemove="zoom(event)" style="background-image: url(../assets/images/products/product-single-img-1.jpg)">
                              <!-- img -->
                              <!-- img -->
                              <img src="../assets/images/products/product-single-img-1.jpg" alt="" />
                           </div>
                        </div>
                        <div>
                           <div class="zoom" onmousemove="zoom(event)" style="background-image: url(../assets/images/products/product-single-img-2.jpg)">
                              <!-- img -->
                              <!-- img -->
                              <img src="../assets/images/products/product-single-img-2.jpg" alt="" />
                           </div>
                        </div>
                        <div>
                           <div class="zoom" onmousemove="zoom(event)" style="background-image: url(../assets/images/products/product-single-img-3.jpg)">
                              <!-- img -->
                              <!-- img -->
                              <img src="../assets/images/products/product-single-img-3.jpg" alt="" />
                           </div>
                        </div>
                        <div>
                           <div class="zoom" onmousemove="zoom(event)" style="background-image: url(../assets/images/products/product-single-img-1.jpg)">
                              <!-- img -->
                              <!-- img -->
                              <img src="../assets/images/products/product-single-img-1.jpg" alt="" />
                           </div>
                        </div>
                        <div>
                           <div class="zoom" onmousemove="zoom(event)" style="background-image: url(../assets/images/products/product-single-img-4.jpg)">
                              <!-- img -->
                              <!-- img -->
                              <img src="../assets/images/products/product-single-img-4.jpg" alt="" />
                           </div>
                        </div>
                     </div>
                     <div class="slider slider-nav mt-4">
                        <div>
                           <img src="../assets/images/products/product-single-img-1.jpg" alt="" class="w-100 rounded" />
                        </div>
                        <div>
                           <img src="../assets/images/products/product-single-img-2.jpg" alt="" class="w-100 rounded" />
                        </div>
                        <div>
                           <img src="../assets/images/products/product-single-img-3.jpg" alt="" class="w-100 rounded" />
                        </div>
                        <div>
                           <img src="../assets/images/products/product-single-img-1.jpg" alt="" class="w-100 rounded" />
                        </div>
                        <div>
                           <img src="../assets/images/products/product-single-img-4.jpg" alt="" class="w-100 rounded" />
                        </div>
                     </div>
                  </div>

                  <div class="col-md-7 col-xl-6">
                     <div class="ps-lg-10 mt-6 mt-md-0">
                        <!-- content -->
                        <a href="#!" class="mb-4 d-block">${itemDTL.itemName}</a>
                        <!-- heading -->
                        <h2 class="mb-1">${itemDTL.colorName}</h2>
                        <div class="mb-4">
                           <!-- rating -->
                           <!-- rating -->
                           <small class="text-warning">
                              <i class="bi bi-star-fill"></i>
                              <i class="bi bi-star-fill"></i>
                              <i class="bi bi-star-fill"></i>
                              <i class="bi bi-star-fill"></i>
                              <i class="bi bi-star-half"></i>
                           </small>
                           <a href="listReview" class="ms-2">(30 reviews)</a>
                        </div>
                        <div class="fs-4">
                           <!-- price -->
                           <span class="fw-bold text-dark"><fmt:formatNumber type="currency" currencySymbol="₩" value="${itemDTL.salesPrice}"/></span>
                        </div>
                        <!-- hr -->
                        <hr class="my-6" />
                        <div>
                           <!-- input -->
                           <div class="input-group input-spinner">
                              <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                              <input type="number" step="1" max="10" value="1" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <div class="mt-3 row justify-content-start g-2 align-items-center">
                           <div class="col-xxl-4 col-lg-4 col-md-5 col-5 d-grid">
                              <!-- button -->
                              <!-- btn -->
                              <button type="button" class="btn btn-primary">
                                 <i class="feather-icon icon-shopping-bag me-2"></i>
                                 Add to cart
                              </button>
                           </div>
                           <div class="col-md-4 col-4">
                              <!-- btn -->
                              <a class="btn btn-light" href="shop-wishlist.html" data-bs-toggle="tooltip" data-bs-html="true" aria-label="Wishlist"><i class="feather-icon icon-heart"></i></a>
                           </div>
                        </div>
                        <!-- hr -->
                        <hr class="my-6" />
                        <div>
                           <!-- table -->
                           <table class="table table-borderless mb-0">
                              <tbody>
                                 <tr>
                                    <td>Availability:</td>
                                    <td>In Stock</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        <div class="mt-8">
                           <!-- dropdown -->
                           <div class="dropdown">
                              <a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Share</a>

                              <ul class="dropdown-menu">
                                 <li>
                                    <a class="dropdown-item" href="#">
                                       <i class="bi bi-facebook me-2"></i>
                                       Facebook
                                    </a>
                                 </li>
                                 <li>
                                    <a class="dropdown-item" href="#">
                                       <i class="bi bi-twitter me-2"></i>
                                       Twitter
                                    </a>
                                 </li>
                                 <li>
                                    <a class="dropdown-item" href="#">
                                       <i class="bi bi-instagram me-2"></i>
                                       Instagram
                                    </a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <section class="my-lg-14 my-14">
            <div class="container">
               <!-- row -->
               <div class="row">
                  <div class="col-12">
                     <!-- heading -->
                     <h3>Related Items</h3>
                  </div>
               </div>
               <!-- row -->
               <div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-2 mt-2">
                    <c:forEach var="relatedItems" items="${listItemDTLByItemId}">
                          <!-- col -->
                          <div class="col">
                             <div class="card card-product">
                                <div class="card-body">
                                   <!-- badge -->
                                   <div class="text-center position-relative">
                                      <a href="#!">
                                         <!-- img -->
                                         <img src="../assets/images/products/product-img-1.jpg" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                      </a>
                                      <!-- action btn -->
                                      <div class="card-product-action">
                                         <a href="shop-wishlist.html" class="btn-action" data-bs-toggle="tooltip" data-bs-html="true" title="Wishlist"><i class="bi bi-heart"></i></a>
                                      </div>
                                   </div>
                                   <!-- heading -->
                                   <div class="text-small mb-1">
                                      <a href="#!" class="text-decoration-none text-muted"><small>${relatedItems.itemName}</small></a>
                                   </div>
                                   <h2 class="fs-6"><a href="#!" class="text-inherit text-decoration-none">${relatedItems.colorName}</a></h2>
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
                                         <span class="text-dark"><fmt:formatNumber type="currency" currencySymbol="₩" value="${relatedItems.salesPrice}"/></span>
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
                    </c:forEach>
               </div>
            </div>
         </section>
         <section class="mt-lg-14 mt-8">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <ul class="nav nav-pills nav-lb-tab" id="myTab" role="tablist">
                        <!-- nav item -->
                        <li class="nav-item" role="presentation">
                           <!-- btn -->
                           <button
                              class="nav-link active"
                              id="product-tab"
                              data-bs-toggle="tab"
                              data-bs-target="#product-tab-pane"
                              type="button"
                              role="tab"
                              aria-controls="product-tab-pane"
                              aria-selected="true">
                              Product Details
                           </button>
                        </li>
                     </ul>
                     <!-- tab content -->
                     <div class="tab-content" id="myTabContent">
                        <!-- tab pane -->
                        <div class="tab-pane fade show active" id="product-tab-pane" role="tabpanel" aria-labelledby="product-tab" tabindex="0">
                           <div class="my-8">
                              <div class="mb-5">
                                 <!-- text -->
                                 <h4 class="mb-1">Nutrient Value & Benefits</h4>
                                 <p class="mb-0">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi, tellus iaculis urna bibendum in lacus, integer. Id imperdiet vitae varius sed magnis eu nisi nunc
                                    sit. Vel, varius habitant ornare ac rhoncus. Consequat risus facilisis ante ipsum netus risus adipiscing sagittis sed. Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit.
                                 </p>
                              </div>
                              <div class="mb-5">
                                 <h5 class="mb-1">Storage Tips</h5>
                                 <p class="mb-0">
                                    Nisi, tellus iaculis urna bibendum in lacus, integer. Id imperdiet vitae varius sed magnis eu nisi nunc sit. Vel, varius habitant ornare ac rhoncus. Consequat risus
                                    facilisis ante ipsum netus risus adipiscing sagittis sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                 </p>
                              </div>
                              <!-- content -->
                              <div class="mb-5">
                                 <h5 class="mb-1">Unit</h5>
                                 <p class="mb-0">3 units</p>
                              </div>
                              <div class="mb-5">
                                 <h5 class="mb-1">Seller</h5>
                                 <p class="mb-0">DMart Pvt. LTD</p>
                              </div>
                              <div>
                                 <h5 class="mb-1">Disclaimer</h5>
                                 <p class="mb-0">
                                    Image shown is a representation and may slightly vary from the actual product. Every effort is made to maintain accuracy of all information displayed.
                                 </p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </main>
      <%@ include file="/WEB-INF/views/common/footer.jsp" %>
      <!-- Javascript-->
      <script src="../assets/libs/rater-js/index.js"></script>
      <script src="../assets/libs/dropzone/dist/min/dropzone.min.js"></script>
      <!-- Libs JS -->
      <!-- <script src="../assets/libs/jquery/dist/jquery.min.js"></script> -->
      <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
      <script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

      <!-- Theme JS -->
      <script src="../assets/js/theme.min.js"></script>

      <script src="../assets/js/vendors/jquery.min.js"></script>
      <script src="../assets/libs/tiny-slider/dist/min/tiny-slider.js"></script>
      <script src="../assets/js/vendors/tns-slider.js"></script>
      <script src="../assets/js/vendors/zoom.js"></script>
      <script src="../assets/libs/slick-carousel/slick/slick.min.js"></script>
      <script src="../assets/js/vendors/slick-slider.js"></script>
      <script src="../assets/js/vendors/dropzone.js"></script>
   </body>
</html>