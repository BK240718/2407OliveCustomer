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
      <title>Shop Checkout eCommerce HTML Template - FreshCart</title>
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
                               <li class="breadcrumb-item active" aria-current="page">Shop Checkout</li>
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
                      <!-- col -->
                      <div class="col-12">
                         <div>
                            <div class="mb-8">
                               <!-- text -->
                               <h1 class="fw-bold mb-0">Checkout</h1>
                               <p class="mb-0">
                                  Already have an account? Click here to
                                  <a href="#!">Sign in</a>
                                  .
                               </p>
                            </div>
                         </div>
                      </div>
                   </div>
                   <div>
                      <!-- row -->
                      <div class="row">
                         <div class="col-xl-7 col-lg-6 col-md-12">
                            <!-- accordion -->
                            <div class="accordion accordion-flush" id="accordionFlushExample">
                               <!-- accordion item -->
                               <div class="accordion-item py-4">
                                  <div class="d-flex justify-content-between align-items-center">
                                     <!-- heading one -->
                                     <a
                                        href="#"
                                        class="fs-5 text-inherit collapsed h4"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#flush-collapseOne"
                                        aria-expanded="true"
                                        aria-controls="flush-collapseOne">
                                        <i class="feather-icon icon-map-pin me-2 text-muted"></i>
                                        Add delivery address
                                     </a>
                                     <!-- btn -->
                                     <a href="#" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addAddressModal">Add a new address</a>
                                     <!-- collapse -->
                                  </div>
                                  <div id="flush-collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionFlushExample">
                                     <div class="mt-5">
                                       <!-- card -->
                                       <div class="card card-bordered shadow-none mb-2">
                                          <!-- card body -->
                                          <div class="card-body p-6">
                                             <div class="row g-2">
                                                <div class="col-12">
                                                   <!-- input -->
                                                   <div class="mb-3">
                                                      <label for="card-mask" class="form-label">받는분</label>
                                                      <input type="text" class="form-control" value="${customer.customerName}" required />
                                                   </div>
                                                </div>
                                                <div class="col-12">
                                                   <!-- input -->
                                                   <div class="mb-3">
                                                      <label for="card-mask" class="form-label">연락처</label>
                                                      <div class="row">
                                                          <div class="col-4">
                                                              <input type="text" class="form-control" value="${customer.phonePart1}" required />
                                                          </div>
                                                          <div class="col-4">
                                                              <input type="text" class="form-control" value="${customer.phonePart2}" required />
                                                          </div>
                                                          <div class="col-4">
                                                              <input type="text" class="form-control" value="${customer.phonePart3}" required />
                                                          </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-md-6 col-12">
                                                   <!-- input -->
                                                   <label class="form-label" for="nameoncard">주소</label>
                                                   <div class="input-group mb-3 mb-lg-0">
                                                      <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                      <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
                                                   </div>
                                                </div>
                                                <!-- input -->
                                                <div class="">
                                                  <input type="text" class="form-control" value="${customer.address1}" required />
                                                </div>
                                                <div class="mb-3">
                                                  <input type="text" class="form-control" value="${customer.address2}" required />
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                     </div>
                                  </div>
                               </div>
                               <!-- accordion item -->
                               <div class="accordion-item py-4">
                                  <a href="#" class="text-inherit h5" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                     <i class="feather-icon icon-shopping-bag me-2 text-muted"></i>
                                     Delivery instructions
                                     <!-- collapse -->
                                  </a>
                                  <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                                     <div class="mt-5">
                                        <label for="DeliveryInstructions" class="form-label sr-only">Delivery instructions</label>
                                        <textarea class="form-control" id="DeliveryInstructions" rows="3" placeholder="Write delivery instructions "></textarea>
                                        <p class="form-text">Add instructions for how you want your order shopped and/or delivered</p>
                                        <div class="mt-5 d-flex justify-content-end">
                                           <a
                                              href="#"
                                              class="btn btn-outline-gray-400 text-muted"
                                              data-bs-toggle="collapse"
                                              data-bs-target="#flush-collapseOne"
                                              aria-expanded="false"
                                              aria-controls="flush-collapseOne">
                                              Prev
                                           </a>
                                           <a href="#" id="kakaoPayButton" class="btn btn-primary ms-2">카카오페이로 결제하기</a>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                         </div>

                         <div class="col-md-12 offset-xl-1 col-xl-4 col-lg-6">
                            <div class="mt-4 mt-lg-0">
                               <div class="card shadow-sm">
                                  <h5 class="px-6 py-4 bg-transparent mb-0">Order Details</h5>
                                  <ul class="list-group list-group-flush">
                                    <c:forEach var="listCart" items="${listCartByCustomerId}">
                                         <!-- list group item -->
                                         <li class="list-group-item px-4 py-3">
                                            <div class="row align-items-center">
                                               <div class="col-2 col-md-2">
                                                  <img src="${listCart.colorImg}" alt="Ecommerce" class="img-fluid" />
                                               </div>
                                               <div class="col-5 col-md-5">
                                                  <h6 class="mb-0">${listCart.colorName}</h6>
                                                  <span><small class="text-muted">${listCart.itemName}</small></span>
                                               </div>
                                               <div class="col-2 col-md-2 text-center text-muted">
                                                  <span>${listCart.totalQuantity}</span>
                                               </div>
                                               <div class="col-3 text-lg-end text-start text-md-end col-md-3">
                                                  <span class="fw-bold"><fmt:formatNumber type="currency" currencySymbol="₩" value="${listCart.totalPrice}"/></span>
                                               </div>
                                            </div>
                                         </li>
                                    </c:forEach>
                                         <!-- list group item -->
                                         <li class="list-group-item px-4 py-3">
                                            <div class="d-flex align-items-center justify-content-between mb-2">
                                               <div>Item Subtotal</div>
                                               <div class="fw-bold"><fmt:formatNumber type="currency" currencySymbol="₩" value="${subtotal}"/></div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between">
                                               <div>
                                                  Shipping Cost
                                                  <i class="feather-icon icon-info text-muted" data-bs-toggle="tooltip" title="Default tooltip"></i>
                                               </div>
                                               <div class="fw-bold"><fmt:formatNumber type="currency" currencySymbol="₩" value="${shippingCost}"/></div>
                                            </div>
                                         </li>
                                         <!-- list group item -->
                                         <li class="list-group-item px-4 py-3">
                                            <div class="d-flex align-items-center justify-content-between fw-bold">
                                               <div>Grand Total</div>
                                               <div><fmt:formatNumber type="currency" currencySymbol="₩" value="${grandTotal}"/></div>
                                            </div>
                                         </li>
                                  </ul>
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
        <script src="../assets/libs/flatpickr/dist/flatpickr.min.js"></script>
        <!-- Libs JS -->
        <!-- <script src="../assets/libs/jquery/dist/jquery.min.js"></script> -->
        <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

        <!-- Theme JS -->
        <script src="../assets/js/theme.min.js"></script>

        <script src="../assets/libs/imask/dist/imask.min.js"></script>
        <script src="../assets/js/vendors/inputmask.js"></script>

      <script>
        var cartItems = [];

        <c:forEach var="item" items="${listCartByCustomerId}">
            cartItems.push({
                item_name: "${item.itemName}",
                quantity: ${item.totalQuantity}
            });
        </c:forEach>

        console.log(cartItems);

        document.getElementById('kakaoPayButton').addEventListener('click', function(event) {
            event.preventDefault(); // 기본 링크 동작 방지
            fetch('/start-kakao-pay', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    customerId: '${customer.customerId}',
                    listCart: cartItems
                })
            })
            .then(response => response.json())
            .then(data => {
                console.log("Response from Kakao Pay API: ", data);
                window.location.href = data.nextRedirectPcUrl;  // 카카오페이 결제 페이지로 리다이렉트
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error occurred while processing the payment: ' + error.message);
            });
        });

      </script>
   </body>
</html>