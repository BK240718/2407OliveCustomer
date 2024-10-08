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
      <title>Shop Cart eCommerce HTML Template - FreshCart</title>
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
         <!-- section-->
         <div class="mt-4">
            <div class="container">
               <!-- row -->
               <div class="row">
                  <!-- col -->
                  <div class="col-12">
                     <!-- breadcrumb -->
                     <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0">
                           <li class="breadcrumb-item"><a href="#!">Home</a></li>
                           <li class="breadcrumb-item"><a href="#!">Shop</a></li>
                           <li class="breadcrumb-item active" aria-current="page">Shop Cart</li>
                        </ol>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
         <!-- section -->
         <section class="mb-lg-14 mb-8 mt-8">
            <div class="container">
               <!-- row -->
               <div class="row">
                  <div class="col-12">
                     <!-- card -->
                     <div class="card py-1 border-0 mb-8">
                        <div>
                           <h1 class="fw-bold">Shop Cart</h1>
                           <p class="mb-0">Shopping in 382480</p>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- row -->
               <div class="row">
                  <div class="col-lg-8 col-md-7">
                     <div class="py-3">
                        <ul class="list-group list-group-flush">
                            <c:forEach var="listCart" items="${listCartByCustomerId}">
                               <!-- list group -->
                               <li class="list-group-item py-3 ps-0 border-top border-bottom">
                                  <!-- row -->
                                  <div class="row align-items-center">
                                     <div class="col-6 col-md-6 col-lg-7">
                                        <div class="d-flex">
                                           <img src="${listCart.colorImg}" alt="Ecommerce" class="icon-shape icon-xxl" />
                                           <div class="ms-3">
                                              <!-- title -->
                                              <a href="../pages/shop-single.html" class="text-inherit">
                                                 <h6 class="mb-0">${listCart.colorName}</h6>
                                              </a>
                                              <span><small class="text-muted">${listCart.itemName}</small></span>
                                              <!-- text -->
                                              <div class="mt-2 small lh-1">
                                                 <a href="#!" class="text-decoration-none text-inherit">
                                                    <span class="me-1 align-text-bottom">
                                                       <svg
                                                          xmlns="http://www.w3.org/2000/svg"
                                                          width="14"
                                                          height="14"
                                                          viewBox="0 0 24 24"
                                                          fill="none"
                                                          stroke="currentColor"
                                                          stroke-width="2"
                                                          stroke-linecap="round"
                                                          stroke-linejoin="round"
                                                          class="feather feather-trash-2 text-success">
                                                          <polyline points="3 6 5 6 21 6"></polyline>
                                                          <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                                          <line x1="10" y1="11" x2="10" y2="17"></line>
                                                          <line x1="14" y1="11" x2="14" y2="17"></line>
                                                       </svg>
                                                    </span>
                                                    <span class="text-muted">Remove</span>
                                                 </a>
                                              </div>
                                           </div>
                                        </div>
                                     </div>
                                     <!-- input group -->
                                     <div class="col-4 col-md-4 col-lg-3">
                                        <!-- input -->
                                        <!-- input -->
                                        <div class="input-group input-spinner">
                                           <input type="button" value="-" class="button-minus btn btn-sm" data-field="quantity" />
                                           <input type="number" step="1" max="10" value="${listCart.totalQuantity}" data-item-dtl-id="${listCart.itemDtlId}" name="quantity" class="quantity-field form-control-sm form-input" />
                                           <input type="button" value="+" class="button-plus btn btn-sm" data-field="quantity" />
                                        </div>
                                     </div>
                                     <!-- price -->
                                     <div class="col-2 text-lg-end text-start text-md-end col-md-2">
                                        <span class="fw-bold"><fmt:formatNumber type="currency" currencySymbol="₩" value="${listCart.totalPrice}"/></span>
                                     </div>
                                  </div>
                               </li>
                            </c:forEach>
                        </ul>
                        <!-- btn -->
                        <div class="d-flex justify-content-between mt-4">
                           <a href="#!" class="btn btn-primary">Continue Shopping</a>
                           <a href="#!" class="btn btn-dark">Update Cart</a>
                        </div>
                     </div>
                  </div>

                  <!-- sidebar -->
                  <div class="col-12 col-lg-4 col-md-5">
                     <!-- card -->
                     <div class="mb-5 card mt-6">
                        <div class="card-body p-6">
                           <!-- heading -->
                           <h2 class="h5 mb-4">Summary</h2>
                           <div class="card mb-2">
                              <!-- list group -->
                              <ul class="list-group list-group-flush">
                                 <!-- list group item -->
                                 <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                       <div>Sub Total</div>
                                    </div>
                                    <span><fmt:formatNumber type="currency" currencySymbol="₩" value="${subtotal}"/></span>
                                 </li>

                                 <!-- list group item -->
                                 <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                       <div>Shipping Cost</div>
                                    </div>
                                    <span><fmt:formatNumber type="currency" currencySymbol="₩" value="${shippingCost}"/></span>
                                 </li>
                                 <!-- list group item -->
                                 <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div class="me-auto">
                                       <div class="fw-bold">Grand Total</div>
                                    </div>
                                    <span class="fw-bold"><fmt:formatNumber type="currency" currencySymbol="₩" value="${grandTotal}"/></span>
                                 </li>
                              </ul>
                           </div>
                           <div class="d-grid mb-1 mt-4">
                              <!-- btn -->
                              <button class="btn btn-primary btn-lg d-flex justify-content-between align-items-center" type="submit">
                                 Go to Checkout
                                 <span class="fw-bold"><fmt:formatNumber type="currency" currencySymbol="₩" value="${grandTotal}"/></span>
                              </button>
                           </div>
                           <!-- text -->
                           <p>
                              <small>
                                 By placing your order, you agree to be bound by the Freshcart
                                 <a href="#!">Terms of Service</a>
                                 and
                                 <a href="#!">Privacy Policy.</a>
                              </small>
                           </p>
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

      <script>
        // 수량 조정 시
        $('.button-minus, .button-plus').on('click', function() {
            var button = $(this); // 클릭한 버튼
            var inputField = button.siblings('input[name="quantity"]'); // 해당 수량 입력 필드
            var itemDtlId = inputField.data('item-dtl-id'); // data-item-dtl-id 속성에서 itemDtlId 값 가져오기
            var customerId = ${sessionScope.customerId};
            var adjustmentValue = (button.val() === '+') ? 1 : -1; // 버튼에 따라 조정 값 설정

            // itemDtlId 값 확인
            console.log('itemDtlId:', itemDtlId);

            // AJAX 요청 보내기
            $.ajax({
                url: '/updateCartItemQuantity', // URL은 실제 요청할 URL로 바꾸세요
                type: 'POST',
                data: {
                    itemDtlId: itemDtlId,
                    customerId: customerId,
                    adjustmentValue: adjustmentValue
                },
                success: function(response) {
                    location.reload();
                },
                error: function(xhr, status, error) {
                    console.error('요청 실패:', status, error);
                }
            });
        });


        // remove 눌렀을 때
        $(document).on('click', '.text-inherit', function(event) {
            event.preventDefault(); // 링크 기본 동작 막기

            var itemDtlId = $(this).closest('li').find('input[name="quantity"]').data('itemDtlId');
            var customerId = ${sessionScope.customerId};

            $.ajax({
                url: '/deleteCartItemNCart',
                type: 'POST',
                data: {
                    itemDtlId: itemDtlId,
                    customerId: customerId
                },
                success: function(response) {
                    if (response.success) {
                        alert('Item deleted successfully!');
                        location.reload(); // 삭제 후 페이지 새로고침
                    } else {
                        alert('Failed to delete item.');
                    }
                },
                error: function(xhr, status, error) {
                    console.error('Error deleting item:', error);
                }
            });
        });
      </script>
   </body>
</html>