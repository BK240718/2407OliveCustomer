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
                            <div style="background: url(../assets/images/slider/slider-image-15.jpg) no-repeat; background-size: cover; border-radius: 0.5rem">
                               <div class="ps-lg-12 py-lg-16 col-xxl-7 col-lg-9 py-14 px-8 text-xs-center">
                                  <!-- badge -->
                                  <div class="d-flex align-items-center mb-4">
                                     <span class="fw-bold text-dark">달바</span>
                                  </div>
                                  <!-- title -->
                                  <h2 class="text-dark display-5 fw-bold mb-3">환절기에도 <br> 자극없이 촉촉한 <br> 자외선 차단</h2>
                                  <p class="fw-bold fs-5">톤업 선크림 3종 할인 기획전</p>
                               </div>
                            </div>
                            <!-- img -->
                            <div style="background: url(../assets/images/slider/slider-image-14.jpg) no-repeat; background-size: cover; border-radius: 0.5rem">
                               <div class="ps-lg-12 py-lg-16 col-xxl-7 col-lg-9 py-14 ps-8 text-xs-center">
                                  <!-- badge -->
                                  <div class="d-flex align-items-center mb-4">
                                     <span class="fw-bold text-dark">프리메라</span>
                                  </div>

                                  <!-- title -->
                                  <h2 class="text-dark display-5 fw-bold mb-3">레티놀보다 <br> 더 강력하게! <br> 탄력엔 비타티놀</h2>
                                  <!-- para -->
                                  <p class="fw-bold fs-5">장바구니 쿠폰 & 증정</p>
                               </div>
                            </div>
                            <!-- img -->
                            <div style="background: url(../assets/images/slider/slider-image-13.jpg) no-repeat; background-size: cover; border-radius: 0.5rem">
                               <div class="ps-lg-12 py-lg-16 col-xxl-7 col-lg-9 py-14 ps-8 text-xs-center">
                                  <!-- badge -->
                                  <div class="d-flex align-items-center mb-4">
                                     <span class="fw-bold text-dark">설화수</span>
                                  </div>
                                  <!-- title -->
                                  <h2 class="text-dark display-5 fw-bold mb-3">10가지 혜택과 <br> 함께 만나는 <br> 윤조 페스티벌</h2>
                                  <!-- para -->
                                  <p class="fw-bold fs-5">장바구니 쿠폰 & 키트 증정</p>
                               </div>
                            </div>
                         </div>
                      </div>
                      <div class="col-xxl-4 col-xl-5 col-12 d-lg-flex d-xl-block gap-3 gap-xl-0">
                         <div class="flex-fill px-8 py-9 mb-6 rounded" style="background: url(../assets/images/banner/ad-banner-9.jpg) no-repeat; background-size: cover">
                            <div>
                               <h3 class="mb-0 fw-bold">
                                  캔디글로우 틴트
                               </h3>
                               <div class="mt-4 mb-5 fs-5">
                                  <p class="mb-0">퓌 볼류밍글로스</p>
                               </div>
                            </div>
                         </div>

                         <div class="flex-fill px-8 py-8 rounded" style="background: url(../assets/images/banner/ad-banner-10.jpg) no-repeat; background-size: cover">
                            <!-- Banner Content -->
                            <div>
                               <!-- Banner Content -->
                               <h3 class="fw-bold mb-3">
                                  국민쉐딩 <br> 투쿨포스쿨
                               </h3>
                               <div class="mt-4 mb-5 fs-5">
                                  <p class="fs-5 mb-0">
                                     마이크로쉐딩
                                     <br />
                                     증정 기획 출시
                                  </p>
                               </div>


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
                         <div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3 mt-2" id="itemList">
                            <c:forEach var="itemDTL" items="${listItemDTLBySection}">
                                <!-- col -->
                                <div class="col">
                                   <!-- card product -->
                                   <div class="card card-product">
                                      <div class="card-body">
                                         <!-- badge -->
                                         <div class="text-center position-relative">
                                            <a href="oneItemDTL?itemDTLId=${itemDTL.itemDtlId}">
                                               <!-- img -->
                                               <img src="${itemDTL.colorImg}" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
                                            </a>

                                         </div>
                                         <!-- heading -->
                                         <div class="text-small mb-1">
                                            <a href="#!" class="text-decoration-none text-muted"><small>${itemDTL.itemName}</small></a>
                                         </div>
                                         <h2 class="fs-6"><a href="oneItemDTL?itemDTLId=${itemDTL.itemDtlId}" class="text-inherit text-decoration-none">${itemDTL.colorName}</a></h2>
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
                                               <span class="text-dark"><fmt:formatNumber type="currency" currencySymbol="₩" value="${itemDTL.salesPrice}"/></span>
                                            </div>

                                         </div>
                                      </div>
                                   </div>
                                </div>
                            </c:forEach>
                         </div>
                         <!-- row -->
                         <div class="row mt-8">
                            <div class="col">
                               <!-- nav -->
                               <nav>
                                  <ul id="pagination" class="pagination">
                                        <c:if test="${page.startPage > page.pageBlock}">
                                             <li class="page-item disabled">
                                                <a class="page-link mx-1" href="listItemDTLBySection?sectionId=${sectionId}&currentPage=${page.startPage-page.pageBlock}" aria-label="Previous">
                                                   <i class="feather-icon icon-chevron-left"></i>
                                                </a>
                                             </li>
                                        </c:if>
                                        <c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
                                            <li class="page-item">
                                                <a class="page-link mx-1 active" href="listItemDTLBySection?sectionId=${sectionId}&currentPage=${i}">${i}</a>
                                            </li>
                                        </c:forEach>
                                        <c:if test="${page.endPage < page.totalPage}">
                                             <li class="page-item">
                                                <a class="page-link mx-1" href="listItemDTLBySection?sectionId=${sectionId}&currentPage=${page.startPage+page.pageBlock}" aria-label="Next">
                                                   <i class="feather-icon icon-chevron-right"></i>
                                                </a>
                                             </li>
                                        </c:if>
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