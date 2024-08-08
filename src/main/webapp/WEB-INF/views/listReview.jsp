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
        <section class="mt-lg-4 mt-8">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="mt-4">
                        <div class="">
                           <!-- row -->
                           <div class="row">
                              <!-- col -->
                              <div class="col-12">
                                 <!-- breadcrumb -->
                                 <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb mb-0">
                                       <li class="breadcrumb-item"><a href="#">Home</a></li>
                                       <li class="breadcrumb-item"><a href="#">Bakery Biscuits</a></li>
                                       <li class="breadcrumb-item active" aria-current="page">Napolitanke Ljesnjak</li>
                                    </ol>
                                 </nav>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- hr -->
                     <hr class="my-6" />
                     <!-- tab content -->
                     <div class="tab-content" id="myTabContent">
                        <!-- tab pane -->
                        <div class="tab-pane fade show active" id="reviews-tab-pane" role="tabpanel" aria-labelledby="reviews-tab" tabindex="0">
                           <div class="my-8">
                              <!-- row -->
                              <div class="row">
                                 <div class="col-md-4">
                                    <div class="me-lg-12 mb-6 mb-md-0">
                                       <div class="mb-5">
                                          <!-- title -->
                                          <h4 class="mb-3">Customer reviews</h4>
                                          <span>
                                             <!-- rating -->
                                             <small class="text-warning">
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-fill"></i>
                                                <i class="bi bi-star-half"></i>
                                             </small>
                                             <span class="ms-3">4.1 out of 5</span>
                                             <small class="ms-3">11,130 global ratings</small>
                                          </span>
                                       </div>
                                       <div class="mb-8">
                                          <!-- progress -->
                                          <div class="d-flex align-items-center mb-2">
                                             <div class="text-nowrap me-3 text-muted">
                                                <span class="d-inline-block align-middle text-muted">5</span>
                                                <i class="bi bi-star-fill ms-1 small text-warning"></i>
                                             </div>
                                             <div class="w-100">
                                                <div class="progress" style="height: 6px">
                                                   <div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                             </div>
                                             <span class="text-muted ms-3">53%</span>
                                          </div>
                                          <!-- progress -->
                                          <div class="d-flex align-items-center mb-2">
                                             <div class="text-nowrap me-3 text-muted">
                                                <span class="d-inline-block align-middle text-muted">4</span>
                                                <i class="bi bi-star-fill ms-1 small text-warning"></i>
                                             </div>
                                             <div class="w-100">
                                                <div class="progress" style="height: 6px">
                                                   <div class="progress-bar bg-warning" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="50"></div>
                                                </div>
                                             </div>
                                             <span class="text-muted ms-3">22%</span>
                                          </div>
                                          <!-- progress -->
                                          <div class="d-flex align-items-center mb-2">
                                             <div class="text-nowrap me-3 text-muted">
                                                <span class="d-inline-block align-middle text-muted">3</span>
                                                <i class="bi bi-star-fill ms-1 small text-warning"></i>
                                             </div>
                                             <div class="w-100">
                                                <div class="progress" style="height: 6px">
                                                   <div class="progress-bar bg-warning" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="35"></div>
                                                </div>
                                             </div>
                                             <span class="text-muted ms-3">14%</span>
                                          </div>
                                          <!-- progress -->
                                          <div class="d-flex align-items-center mb-2">
                                             <div class="text-nowrap me-3 text-muted">
                                                <span class="d-inline-block align-middle text-muted">2</span>
                                                <i class="bi bi-star-fill ms-1 small text-warning"></i>
                                             </div>
                                             <div class="w-100">
                                                <div class="progress" style="height: 6px">
                                                   <div class="progress-bar bg-warning" role="progressbar" style="width: 22%" aria-valuenow="22" aria-valuemin="0" aria-valuemax="22"></div>
                                                </div>
                                             </div>
                                             <span class="text-muted ms-3">5%</span>
                                          </div>
                                          <!-- progress -->
                                          <div class="d-flex align-items-center mb-2">
                                             <div class="text-nowrap me-3 text-muted">
                                                <span class="d-inline-block align-middle text-muted">1</span>
                                                <i class="bi bi-star-fill ms-1 small text-warning"></i>
                                             </div>
                                             <div class="w-100">
                                                <div class="progress" style="height: 6px">
                                                   <div class="progress-bar bg-warning" role="progressbar" style="width: 14%" aria-valuenow="14" aria-valuemin="0" aria-valuemax="14"></div>
                                                </div>
                                             </div>
                                             <span class="text-muted ms-3">7%</span>
                                          </div>
                                       </div>
                                       <div class="d-grid">
                                          <h4>Review this product</h4>
                                          <p class="mb-0">Share your thoughts with other customers.</p>
                                          <a href="#" class="btn btn-outline-gray-400 mt-4 text-muted">Write the Review</a>
                                       </div>
                                    </div>
                                 </div>
                                 <!-- col -->
                                 <div class="col-md-8">
                                    <div class="mb-10">
                                       <div class="d-flex justify-content-between align-items-center mb-8">
                                          <div>
                                             <!-- heading -->
                                             <h4>Reviews</h4>
                                          </div>
                                          <div>
                                             <select class="form-select">
                                                <option selected>Top Reviews</option>
                                                <option value="Most Recent">Most Recent</option>
                                             </select>
                                          </div>
                                       </div>
                                       <div class="d-flex border-bottom pb-6 mb-6">
                                          <!-- img -->
                                          <!-- img -->
                                          <img src="../assets/images/avatar/avatar-10.jpg" alt="" class="rounded-circle avatar-lg" />
                                          <div class="ms-5">
                                             <h6 class="mb-1">Shankar Subbaraman</h6>
                                             <!-- select option -->
                                             <!-- content -->
                                             <p class="small">
                                                <span class="text-muted">30 December 2022</span>
                                                <span class="text-primary ms-3 fw-bold">Verified Purchase</span>
                                             </p>
                                             <!-- rating -->
                                             <div class="mb-2">
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <span class="ms-3 text-dark fw-bold">Need to recheck the weight at delivery point</span>
                                             </div>
                                             <!-- text-->
                                             <p>
                                                Product quality is good. But, weight seemed less than 1kg. Since it is being sent in open package, there is a possibility of pilferage in between.
                                                FreshCart sends the veggies and fruits through sealed plastic covers and Barcode on the weight etc. .
                                             </p>
                                             <div>
                                                <div class="border icon-shape icon-lg border-2">
                                                   <!-- img -->
                                                   <img src="../assets/images/products/product-img-1.jpg" alt="" class="img-fluid" />
                                                </div>
                                                <div class="border icon-shape icon-lg border-2 ms-1">
                                                   <!-- img -->
                                                   <img src="../assets/images/products/product-img-2.jpg" alt="" class="img-fluid" />
                                                </div>
                                                <div class="border icon-shape icon-lg border-2 ms-1">
                                                   <!-- img -->
                                                   <img src="../assets/images/products/product-img-3.jpg" alt="" class="img-fluid" />
                                                </div>
                                             </div>
                                             <!-- icon -->
                                             <div class="d-flex justify-content-end mt-4">
                                                <a href="#" class="text-muted">
                                                   <i class="feather-icon icon-thumbs-up me-1"></i>
                                                   Helpful
                                                </a>
                                                <a href="#" class="text-muted ms-4">
                                                   <i class="feather-icon icon-flag me-2"></i>
                                                   Report abuse
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="d-flex border-bottom pb-6 mb-6 pt-4">
                                          <!-- img -->
                                          <img src="../assets/images/avatar/avatar-12.jpg" alt="" class="rounded-circle avatar-lg" />
                                          <div class="ms-5">
                                             <h6 class="mb-1">Robert Thomas</h6>
                                             <!-- content -->
                                             <p class="small">
                                                <span class="text-muted">29 December 2022</span>
                                                <span class="text-primary ms-3 fw-bold">Verified Purchase</span>
                                             </p>
                                             <!-- rating -->
                                             <div class="mb-2">
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star text-warning"></i>
                                                <span class="ms-3 text-dark fw-bold">Need to recheck the weight at delivery point</span>
                                             </div>

                                             <p>
                                                Product quality is good. But, weight seemed less than 1kg. Since it is being sent in open package, there is a possibility of pilferage in between.
                                                FreshCart sends the veggies and fruits through sealed plastic covers and Barcode on the weight etc..
                                             </p>
                                             <!-- icon -->
                                             <div class="d-flex justify-content-end mt-4">
                                                <a href="#" class="text-muted">
                                                   <i class="feather-icon icon-thumbs-up me-1"></i>
                                                   Helpful
                                                </a>
                                                <a href="#" class="text-muted ms-4">
                                                   <i class="feather-icon icon-flag me-2"></i>
                                                   Report abuse
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="d-flex border-bottom pb-6 mb-6 pt-4">
                                          <!-- img -->
                                          <img src="../assets/images/avatar/avatar-9.jpg" alt="" class="rounded-circle avatar-lg" />
                                          <div class="ms-5">
                                             <h6 class="mb-1">Barbara Tay</h6>
                                             <!-- content -->
                                             <p class="small">
                                                <span class="text-muted">28 December 2022</span>
                                                <span class="text-danger ms-3 fw-bold">Unverified Purchase</span>
                                             </p>
                                             <!-- rating -->
                                             <div class="mb-2">
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star text-warning"></i>
                                                <span class="ms-3 text-dark fw-bold">Need to recheck the weight at delivery point</span>
                                             </div>

                                             <p>Everytime i ordered from fresh i got greenish yellow bananas just like i wanted so go for it , its happens very rare that u get over riped ones.</p>

                                             <!-- icon -->
                                             <div class="d-flex justify-content-end mt-4">
                                                <a href="#" class="text-muted">
                                                   <i class="feather-icon icon-thumbs-up me-1"></i>
                                                   Helpful
                                                </a>
                                                <a href="#" class="text-muted ms-4">
                                                   <i class="feather-icon icon-flag me-2"></i>
                                                   Report abuse
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="d-flex border-bottom pb-6 mb-6 pt-4">
                                          <!-- img -->
                                          <img src="../assets/images/avatar/avatar-8.jpg" alt="" class="rounded-circle avatar-lg" />
                                          <div class="ms-5 flex-grow-1">
                                             <h6 class="mb-1">Sandra Langevin</h6>
                                             <!-- content -->
                                             <p class="small">
                                                <span class="text-muted">8 December 2022</span>
                                                <span class="text-danger ms-3 fw-bold">Unverified Purchase</span>
                                             </p>
                                             <!-- rating -->
                                             <div class="mb-2">
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star-fill text-warning"></i>
                                                <i class="bi bi-star text-warning"></i>
                                                <span class="ms-3 text-dark fw-bold">Great product</span>
                                             </div>

                                             <p>Great product & package. Delivery can be expedited.</p>

                                             <!-- icon -->
                                             <div class="d-flex justify-content-end mt-4">
                                                <a href="#" class="text-muted">
                                                   <i class="feather-icon icon-thumbs-up me-1"></i>
                                                   Helpful
                                                </a>
                                                <a href="#" class="text-muted ms-4">
                                                   <i class="feather-icon icon-flag me-2"></i>
                                                   Report abuse
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div>
                                          <a href="#" class="btn btn-outline-gray-400 text-muted">Read More Reviews</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
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