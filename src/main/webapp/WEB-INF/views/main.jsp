<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
   </head>
   <body>
        <main>
             <section class="mt-8">
                <div class="container">
                   <div class="hero-slider">
                      <div style="background: url(./assets/images/slider/slide-2.jpg) no-repeat; background-size: cover; border-radius: 0.5rem; background-position: center">
                         <div class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
                            <span class="badge text-bg-warning">포맨트</span>

                            <h2 class="text-dark display-5 fw-bold mt-4">쿠로미의 사랑스러운 감성 담은 향기</h2>
                            <p class="lead">너티 1위 향수 쿠로미 에디션 런칭</p>
                            <a href="#!" class="btn btn-dark mt-3">
                               Shop Now
                               <i class="feather-icon icon-arrow-right ms-1"></i>
                            </a>
                         </div>
                      </div>
                      <div style="background: url(./assets/images/slider/slider-3.jpg) no-repeat; background-size: cover; border-radius: 0.5rem; background-position: center">
                         <div class="ps-lg-12 py-lg-16 col-xxl-5 col-md-7 py-14 px-8 text-xs-center">
                            <span class="badge text-bg-warning">넘버즈인</span>
                            <h2 class="text-dark display-5 fw-bold mt-4">
                               피부 고민
                               <br />
                               맞춤 스킨케어

                            </h2>
                            <p class="lead">NCT WISH 엽서 증정 & 특가</p>
                            <a href="#!" class="btn btn-dark mt-3">
                               Shop Now
                               <i class="feather-icon icon-arrow-right ms-1"></i>
                            </a>
                         </div>
                      </div>
                   </div>
                </div>
             </section>
             <!-- All Products Start-->
              <section class="my-lg-14 my-8">
                 <div class="container">
                    <div class="row">
                       <div class="col-12 mb-6">
                          <h3 class="mb-0">All Products</h3>
                       </div>
                    </div>

                    <div class="row g-4 row-cols-lg-5 row-cols-2 row-cols-md-3">
                        <c:forEach var="itemDTL" items="${allItemDTL}">
                           <div class="col">
                              <div class="card card-product">
                                 <div class="card-body">
                                    <div class="text-center position-relative">

                                       <a href="oneItemDTL?itemDTLId=${itemDTL.itemDtlId}"><img src="${itemDTL.colorImg}" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" /></a>


                                    </div>
                                    <div class="text-small mb-1">
                                       <a href="#!" class="text-decoration-none text-muted"><small>${itemDTL.itemName}</small></a>
                                    </div>
                                    <h2 class="fs-6"><a href="./pages/shop-single.html" class="text-inherit text-decoration-none">${itemDTL.colorName}</a></h2>
                                    <div>
                                       <small class="text-warning">
                                          <i class="bi bi-star-fill"></i>
                                          <i class="bi bi-star-fill"></i>
                                          <i class="bi bi-star-fill"></i>
                                          <i class="bi bi-star-fill"></i>
                                          <i class="bi bi-star-half"></i>
                                       </small>
                                       <span class="text-muted small">4.5(149)</span>
                                    </div>
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
                 </div>
              </section>
              <!-- All Products End-->
        </main>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
      <!-- Javascript-->

      <!-- Libs JS -->
      <!-- <script src="./assets/libs/jquery/dist/jquery.min.js"></script> -->
      <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
      <script src="./assets/libs/simplebar/dist/simplebar.min.js"></script>

      <!-- Theme JS -->
      <script src="./assets/js/theme.min.js"></script>

      <script src="./assets/js/vendors/jquery.min.js"></script>
      <script src="./assets/js/vendors/countdown.js"></script>
      <script src="./assets/libs/slick-carousel/slick/slick.min.js"></script>
      <script src="./assets/js/vendors/slick-slider.js"></script>
      <script src="./assets/libs/tiny-slider/dist/min/tiny-slider.js"></script>
      <script src="./assets/js/vendors/tns-slider.js"></script>
      <script src="./assets/js/vendors/zoom.js"></script>
   </body>
</html>