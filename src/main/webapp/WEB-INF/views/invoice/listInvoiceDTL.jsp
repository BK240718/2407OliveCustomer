<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="Codescandy" name="author">
              <title>Order Single Dashboard eCommerce HTML Template - FreshCart</title>
              <!-- Favicon icon-->
        <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon/favicon.ico">


        <!-- Libs CSS -->
        <link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
        <link href="../assets/libs/feather-webfont/dist/feather-icons.css" rel="stylesheet">
        <link href="../assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet">


        <!-- Theme CSS -->
        <link rel="stylesheet" href="../assets/css/theme.min.css">
   </head>
   <body>
        <main>
           <!-- section -->
           <section>
              <div class="container">
                 <!-- row -->
                 <div class="row">
                    <!-- col -->
                    <div class="col-12">
                       <div class="d-flex justify-content-between align-items-center d-md-none py-4">
                          <!-- heading -->
                          <h3 class="fs-5 mb-0">Account Setting</h3>
                          <!-- button -->
                          <button
                             class="btn btn-outline-gray-400 text-muted d-md-none btn-icon btn-sm ms-3"
                             type="button"
                             data-bs-toggle="offcanvas"
                             data-bs-target="#offcanvasAccount"
                             aria-controls="offcanvasAccount">
                             <i class="bi bi-text-indent-left fs-3"></i>
                          </button>
                       </div>
                    </div>
                    <%@ include file="/WEB-INF/views/customer/accountSidebar.jsp" %>
                    <div class="col-lg-9 col-md-8 col-12">
                       <div class="py-6 p-md-6 p-lg-10">
                          <!-- container -->
                          <div class="container">
                             <!-- row -->
                             <div class="row mb-8">
                                <div class="col-md-12">
                                   <div class="d-flex flex-column flex-md-row justify-content-between align-items-md-center gap-4">
                                      <div>
                                         <!-- page header -->
                                         <h2>Order Single</h2>
                                         <!-- breacrumb -->
                                         <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb mb-0">
                                               <li class="breadcrumb-item"><a href="#" class="text-inherit">Dashboard</a></li>
                                               <li class="breadcrumb-item active" aria-current="page">Order Single</li>
                                            </ol>
                                         </nav>
                                      </div>
                                      <!-- button -->
                                      <div>
                                         <a href="#" class="btn btn-primary">Back to all orders</a>
                                      </div>
                                   </div>
                                </div>
                             </div>
                             <!-- row -->
                             <div class="row">
                                <div class="col-xl-12 col-12 mb-5">
                                   <!-- card -->
                                   <div class="card h-100 card-lg">
                                      <div class="card-body p-6">
                                         <div class="d-md-flex justify-content-between">
                                            <div class="d-flex align-items-center mb-2 mb-md-0">
                                               <h2 class="mb-0">Order ID: #${listInvoiceDTL[0].invoiceId}</h2>
                                               <span class="badge bg-light-warning text-dark-warning ms-2">Pending</span>
                                            </div>
                                            <!-- select option -->
                                            <div class="d-md-flex">
                                               <div class="mb-2 mb-md-0">
                                                  <select class="form-select">
                                                     <option selected>Status</option>
                                                     <option value="Success">Success</option>
                                                     <option value="Pending">Pending</option>
                                                     <option value="Cancel">Cancel</option>
                                                  </select>
                                               </div>
                                               <!-- button -->
                                               <div class="ms-md-3">
                                                  <a href="#" class="btn btn-primary">Save</a>
                                                  <a href="#" class="btn btn-secondary">Download Invoice</a>
                                               </div>
                                            </div>
                                         </div>
                                         <div class="mt-8">
                                            <div class="row">
                                               <!-- address -->
                                               <div class="col-lg-4 col-md-4 col-12">
                                                  <div class="mb-6">
                                                     <h6>Customer Details</h6>
                                                     <p class="mb-1 lh-lg">
                                                        ${listInvoiceDTL[0].receiver}
                                                        <br />
                                                        ${listInvoiceDTL[0].phoneNum}
                                                     </p>
                                                     <a href="#">View Profile</a>
                                                  </div>
                                               </div>
                                               <!-- address -->
                                               <div class="col-lg-4 col-md-4 col-12">
                                                  <div class="mb-6">
                                                     <h6>Shipping Address</h6>
                                                     <p class="mb-1 lh-lg">
                                                        ${listInvoiceDTL[0].address1}
                                                        <br />
                                                        ${listInvoiceDTL[0].address2}
                                                     </p>
                                                  </div>
                                               </div>
                                               <!-- address -->
                                               <div class="col-lg-4 col-md-4 col-12">
                                                  <div class="mb-6">
                                                     <h6>Order Details</h6>
                                                     <p class="mb-1 lh-lg">
                                                        Order ID:
                                                        <span class="text-dark">FC001</span>
                                                        <br />
                                                        Order Date:
                                                        <span class="text-dark"><fmt:formatDate value="${listInvoiceDTL[0].convertStrToDate(listInvoiceDTL[0].orderDate)}" pattern="yyyy-MM-dd"/></span>
                                                        <br />
                                                        Order Total:
                                                        <span class="text-dark">$734.28</span>
                                                     </p>
                                                  </div>
                                               </div>
                                            </div>
                                         </div>
                                      </div>
                                      <div class="row">
                                         <div class="col-12">
                                            <div class="table-responsive">
                                               <!-- Table -->
                                               <table class="table mb-0 text-nowrap table-centered">
                                                  <!-- Table Head -->
                                                  <thead class="bg-light">
                                                     <tr>
                                                        <th>Products</th>
                                                        <th>Price</th>
                                                        <th>Quantity</th>
                                                        <th>Total</th>
                                                     </tr>
                                                  </thead>
                                                  <!-- tbody -->
                                                  <tbody>
                                                    <c:forEach var="listInvoiceDTL" items="${listInvoiceDTL}">
                                                         <tr>
                                                            <td>
                                                               <a href="#" class="text-inherit">
                                                                  <div class="d-flex align-items-center">
                                                                     <div>
                                                                        <img src="${listInvoiceDTL.colorImg}" alt="" class="icon-shape icon-lg" />
                                                                     </div>
                                                                     <div class="ms-lg-4 mt-2 mt-lg-0">
                                                                        <h5 class="mb-0 h6">${listInvoiceDTL.colorName}</h5>
                                                                        <span><small class="text-muted">${listInvoiceDTL.itemName}</small></span>
                                                                     </div>
                                                                  </div>
                                                               </a>
                                                            </td>
                                                            <td><span class="text-body"><fmt:formatNumber type="currency" currencySymbol="₩" value="${listInvoiceDTL.price}"/></span></td>
                                                            <td>${listInvoiceDTL.invoiceDtlQty}</td>
                                                            <!-- Total price 계산 -->
                                                            <c:set var="totalPriceForInvoiceDTL" value="${listInvoiceDTL.price * listInvoiceDTL.invoiceDtlQty}" />
                                                            <td><fmt:formatNumber type="currency" currencySymbol="₩" value="${totalPriceForInvoiceDTL}" /></td>
                                                         </tr>
                                                    </c:forEach>
                                                     <tr>
                                                        <td class="border-bottom-0 pb-0"></td>
                                                        <td class="border-bottom-0 pb-0"></td>
                                                        <td colspan="1" class="fw-medium text-dark">
                                                           <!-- text -->
                                                           Sub Total :
                                                        </td>
                                                        <td class="fw-medium text-dark">
                                                           <!-- text -->
                                                           $80.00
                                                        </td>
                                                     </tr>
                                                     <tr>
                                                        <td class="border-bottom-0 pb-0"></td>
                                                        <td class="border-bottom-0 pb-0"></td>
                                                        <td colspan="1" class="fw-medium text-dark">
                                                           <!-- text -->
                                                           Shipping Cost
                                                        </td>
                                                        <td class="fw-medium text-dark">
                                                           <!-- text -->
                                                           $10.00
                                                        </td>
                                                     </tr>

                                                     <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td colspan="1" class="fw-semibold text-dark">
                                                           <!-- text -->
                                                           Grand Total
                                                        </td>
                                                        <td class="fw-semibold text-dark">
                                                           <!-- text -->
                                                           $90.00
                                                        </td>
                                                     </tr>
                                                  </tbody>
                                               </table>
                                            </div>
                                         </div>
                                      </div>
                                      <div class="card-body p-6">
                                         <div class="row">
                                            <div class="col-md-6 mb-4 mb-lg-0">
                                               <h6>Payment Info</h6>
                                               <span>Cash on Delivery</span>
                                            </div>
                                            <div class="col-md-6">
                                               <h5>Notes</h5>
                                               <textarea class="form-control mb-3" rows="3" placeholder="Write note for order"></textarea>
                                               <a href="#" class="btn btn-primary">Save Notes</a>
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
              </div>
           </section>
       </main>
       <%@ include file="/WEB-INF/views/common/footer.jsp" %>
       <!-- Libs JS -->
       <!-- <script src="../assets/libs/jquery/dist/jquery.min.js"></script> -->
       <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
       <script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

       <!-- Theme JS -->
       <script src="../assets/js/theme.min.js"></script>
   </body>
</html>