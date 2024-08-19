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
                    <form action="/insertReviewNVote" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="itemDtlId" value="${itemDTL.itemDtlId}">
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
                                <input type="hidden" name="rating" id="rating" value="">
                             </div>
                        </div>
                        <div class="border-bottom py-4 mb-4">
                             <h4 class="mb-3">Recommended Personal Color</h4>
                             <div class="container my-5">
                                 <!-- Row 1 -->
                                 <div class="row">
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="1" id="flexCheck1">
                                             <label class="form-check-label" for="flexCheck1">봄 웜 라이트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="4" id="flexCheck2">
                                             <label class="form-check-label" for="flexCheck2">여름 쿨 라이트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="7" id="flexCheck3">
                                             <label class="form-check-label" for="flexCheck3">가을 웜 뮤트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="10" id="flexCheck4">
                                             <label class="form-check-label" for="flexCheck4">겨울 쿨 브라이트</label>
                                         </div>
                                     </div>
                                 </div>
                                 <!-- Row 2 -->
                                 <div class="row">
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="2" id="flexCheck5">
                                             <label class="form-check-label" for="flexCheck5">봄 웜 트루</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="5" id="flexCheck6">
                                             <label class="form-check-label" for="flexCheck6">여름 쿨 트루</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="8" id="flexCheck7">
                                             <label class="form-check-label" for="flexCheck7">가을 웜 트루</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="11" id="flexCheck8">
                                             <label class="form-check-label" for="flexCheck8">겨울 쿨 트루</label>
                                         </div>
                                     </div>
                                 </div>
                                 <!-- Row 3 -->
                                 <div class="row">
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="3" id="flexCheck9">
                                             <label class="form-check-label" for="flexCheck9">봄 웜 브라이트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="6" id="flexCheck10">
                                             <label class="form-check-label" for="flexCheck10">여름 쿨 뮤트</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="9" id="flexCheck11">
                                             <label class="form-check-label" for="flexCheck11">가을 웜 딥</label>
                                         </div>
                                     </div>
                                     <div class="col">
                                         <div class="form-check">
                                             <input class="form-check-input" type="checkbox" name="colors" value="12" id="flexCheck12">
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
                              <textarea class="form-control" rows="3" name="content" placeholder="What did you like or dislike? What did you use this product for?"></textarea>
                        </div>
                        <div class="py-4 mb-4">
                             <h5>Add a photo</h5>
                             <p>Shoppers find images more helpful than text alone.</p>
                             <div class="mb-4 d-flex">
                                <div class="position-relative">
                                  <img class="image icon-shape icon-xxxl bg-light rounded-4" src="../assets/images/docs/placeholder-img.jpg" alt="Image" />
                                  <div class="file-upload position-absolute end-0 top-0 mt-n2 me-n1">
                                     <input type="file" class="file-input" name="reviewImg" multiple/>
                                     <span class="icon-shape icon-sm rounded-circle bg-white">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-pencil-fill text-muted" viewBox="0 0 16 16">
                                           <path
                                              d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z" />
                                        </svg>
                                     </span>
                                  </div>
                                </div>
                            </div>
                        </div>
                        <!-- button -->
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="btn btn-primary">Submit Review</button>
                        </div>
                    </form>
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

        <script>
            // DOM이 완전히 로드된 후 실행
            document.addEventListener('DOMContentLoaded', function() {
                // 별점 UI를 표시하는 div 요소와 숨겨진 input 요소를 가져옴
                const raterDiv = document.querySelector('.rater');
                const ratingInput = document.getElementById('rating');

                // 별점 UI를 클릭할 때 이벤트 리스너 추가
                raterDiv.addEventListener('click', function(e) {
                    // 별점 UI의 너비를 가져옴
                    const raterWidth = raterDiv.offsetWidth;
                    // 클릭 위치를 기준으로 별점 값을 계산
                    const clickX = e.clientX - raterDiv.getBoundingClientRect().left;
                    const rating = Math.ceil((clickX / raterWidth) * 5);

                    // 계산된 별점 값을 숨겨진 input 요소에 설정
                    ratingInput.value = rating;

                    // 별점 UI 업데이트
                    updateStars(rating);
                });

                // 별점 UI를 업데이트하는 함수
                function updateStars(rating) {
                    // 별점 값에 비례하여 너비 퍼센트를 계산
                    const percentage = (rating / 5) * 100;
                    // 별점 UI의 별 부분에 너비 스타일 적용
                    raterDiv.querySelector('.star-value').style.width = percentage + '%';
                    // 별점 UI의 title 속성 업데이트 (예: "4/5")
                    raterDiv.setAttribute('title', rating + '/5');
                }
            });
        </script>
   </body>
</html>