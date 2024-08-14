<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
   <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta content="Codescandy" name="author" />
        <title>Orders eCommerce HTML Template - FreshCart</title>
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
        <!-- main -->
        <div class="py-6 p-md-6 p-lg-10">
            <div class="row">
                <div class="col-lg-8">
                    <div>
                        <!-- rating -->
                        <div style="border-bottom: 2px solid #000; padding-top: 0.5rem; padding-bottom: 0.5rem;">
                            <h3 class="mb-5">Create Review</h3>
                        </div>
                        <div class="border-bottom py-4 mb-4">
                           <a href="#" class="text-inherit">
                              <div class="d-flex align-items-center">
                                 <div>
                                    <img src="${itemDTL.colorImg}" alt="" class="icon-shape icon-lg" />
                                 </div>
                                 <div class="ms-3 ms-lg-4 mt-2 mt-lg-0">
                                    <h5 class="mb-0 h6">${itemDTL.colorName}</h5>
                                    <span><small class="text-muted">${itemDTL.itemName}</small></span>
                                 </div>
                              </div>
                           </a>
                        </div>
                        <div class="border-bottom py-4 mb-4">
                             <h4 class="mb-3">Overall rating</h4>
                             <div class="rater">

                             </div>
                        </div>
                        <div class="border-bottom py-4 mb-4">
                             <h4 class="mb-3">Recommended Personal Color</h4>
                             <div class="container my-5">
                                 <!-- Row 1 -->
                                 <div class="row">
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck1">
                                             <label class="form-check-label" for="flexCheck1">봄 웜 라이트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck2">
                                             <label class="form-check-label" for="flexCheck2">여름 쿨 라이트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck3">
                                             <label class="form-check-label" for="flexCheck3">가을 웜 뮤트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck4">
                                             <label class="form-check-label" for="flexCheck4">겨울 쿨 브라이트</label>
                                         </div>
                                     </div>
                                 </div>
                                 <!-- Row 2 -->
                                 <div class="row">
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck5">
                                             <label class="form-check-label" for="flexCheck5">봄 웜 트루</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck6">
                                             <label class="form-check-label" for="flexCheck6">여름 쿨 트루</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck7">
                                             <label class="form-check-label" for="flexCheck7">가을 웜 트루</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck8">
                                             <label class="form-check-label" for="flexCheck8">겨울 쿨 트루</label>
                                         </div>
                                     </div>
                                 </div>
                                 <!-- Row 3 -->
                                 <div class="row">
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck9">
                                             <label class="form-check-label" for="flexCheck9">봄 웜 브라이트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck10">
                                             <label class="form-check-label" for="flexCheck10">여름 쿨 뮤트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck11">
                                             <label class="form-check-label" for="flexCheck11">가을 웜 딥</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" value="" id="flexCheck12">
                                             <label class="form-check-label" for="flexCheck12">겨울 쿨 딥</label>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                        </div>
                        <!-- form control -->
                        <div class="border-bottom py-4 mb-4">
                             <!-- heading -->
                              <h5>Add a written review</h5>
                              <textarea class="form-control" rows="3" placeholder="What did you like or dislike? What did you use this product for?"></textarea>
                        </div>
                        <div class="py-4 mb-4">
                             <h5>Add a photo</h5>
                             <p>Shoppers find images more helpful than text alone.</p>
                             <div id="my-dropzone" class="dropzone mt-4 border-dashed rounded-2 min-h-0"></div>
                        </div>
                        <!-- button -->
                        <div class="d-flex justify-content-end">
                            <a href="#" class="btn btn-primary">Submit Review</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript-->
        <script src="../assets/libs/rater-js/index.js"></script>
        <script src="../assets/libs/dropzone/dist/min/dropzone.min.js"></script>
        <script src="../assets/libs/flatpickr/dist/flatpickr.min.js"></script>
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
        <script src="../assets/libs/quill/dist/quill.min.js"></script>
        <script src="../assets/js/vendors/editor.js"></script>
        <script src="../assets/js/vendors/dropzone.js"></script>
   </body>
</html>