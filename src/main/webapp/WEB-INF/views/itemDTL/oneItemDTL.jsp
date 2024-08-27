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
                             <div class="zoom" onmousemove="zoom(event)" style="background-image: url(${itemDTL.colorImg})">
                                <!-- img -->
                                <!-- img -->
                                <img src="${itemDTL.colorImg}" alt="colorImg" />
                             </div>
                          </div>
                          <c:forEach var="thumbnail" items="${thumbnailList}">
                              <div>
                                 <div class="zoom" onmousemove="zoom(event)" style="background-image: url(${thumbnail})">
                                    <!-- img -->
                                    <img src="${thumbnail}" alt="thumbnail" />
                                 </div>
                              </div>
                          </c:forEach>
                       </div>
                       <div class="slider slider-nav mt-4">
                          <div>
                             <img src="${itemDTL.colorImg}" alt="colorImg" class="w-100 rounded" />
                          </div>
                          <c:forEach var="thumbnail" items="${thumbnailList}">
                              <div>
                                 <img src="${thumbnail}" alt="thumbnail" class="w-100 rounded" />
                              </div>
                          </c:forEach>
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
                              <input type="number" step="1" max="10" value="1" id="quantity" name="quantity" class="quantity-field form-control-sm form-input" />
                              <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                           </div>
                        </div>
                        <div class="mt-3 row justify-content-start g-2 align-items-center">
                           <div class="col-xxl-4 col-lg-4 col-md-5 col-5 d-grid">
                              <!-- button -->
                              <!-- btn -->
                              <button type="button" class="btn btn-primary" id="insert2Cart" data-itemDTL-id="${itemDTL.itemDtlId}">
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
                                         <img src="${relatedItems.colorImg}" alt="Grocery Ecommerce Template" class="mb-3 img-fluid" />
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
                                  <c:forEach var="detailImg" items="${detailImgList}">
                                      <div>
                                         <img src="${detailImg}" alt="detailImg" class="w-100 rounded" />
                                      </div>
                                  </c:forEach>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </main>

      <!-- Modal -->
      <div class="modal fade" id="modalItemInserted2Cart" tabindex="-1" role="dialog" aria-labelledby="modalItemInserted2CartLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>

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

      <script>
        document.getElementById('insert2Cart').addEventListener('click', function() {

            const itemDtlId = this.getAttribute('data-itemDTL-id');
            const quantity = document.getElementById('quantity').value;
            const redirectUrl = encodeURIComponent(window.location.href);

            console.log("Redirect URL:", redirectUrl);

            const payload = {
                    itemDtlId: itemDtlId,
                    quantity: quantity,
                    redirectUrl: redirectUrl
                };

            // 서버에 POST 요청 보내는 fetch API 호출
            fetch('/insert-to-cart', {
                method: 'POST', // HTTP 메서드 지정 (POST 요청)
                headers: {
                    'Content-Type': 'application/json',  // 요청 본문이 JSON 형식임을 명시
                    'X-Requested-With': 'XMLHttpRequest'
                },
                body: JSON.stringify(payload) // 요청 본문에 JSON 형식으로 데이터 전송
            })
            .then(response => {
                if (response.status === 401) {   // 로그인 필요 시
                    return response.json().then(data => {
                        if (data.redirectUrl) {
                            window.location.href = data.redirectUrl;
                        } else {
                            console.error('Redirect URL not found in response');
                        }
                    });
                } else {
                    return response.json();
                }
            })
            .then(data => {
                if (data.success) { // 서버 응답 데이터에서 success 필드가 true 인 경우
                    // 서버로부터 성공 응답을 받으면 모달을 띄운다
                    var Modal = new bootstrap.Modal(document.getElementById('modalItemInserted2Cart'));
                    Modal.show();
                } else {
                    alert('Fail to add product to cart');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        });
      </script>
   </body>
</html>