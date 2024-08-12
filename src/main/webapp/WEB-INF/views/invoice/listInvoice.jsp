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
      <title>Orders eCommerce HTML Template - FreshCart</title>
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
                        <!-- heading -->
                        <h2 class="mb-6">Your Orders</h2>

                        <div class="table-responsive-xxl border-0">
                           <!-- Table -->
                           <table class="table mb-0 text-nowrap table-centered">
                              <!-- Table Head -->
                              <thead class="bg-light">
                                 <tr>
                                    <th>&nbsp;</th>
                                    <th>Product</th>
                                    <th>Order</th>
                                    <th>Date</th>
                                    <th>Items</th>
                                    <th>Status</th>
                                    <th>Amount</th>

                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                <c:forEach var="listInvoice" items="${listInvoiceByCustomerId}">
                                     <!-- Table body -->
                                     <tr>
                                        <td class="align-middle border-top-0 w-0">
                                           <a href="listInvoiceDTL?invoiceId=${listInvoice.invoiceId}"><img src="${listInvoice.colorImg}" alt="Ecommerce" class="icon-shape icon-xl" /></a>
                                        </td>
                                        <td class="align-middle border-top-0">
                                           <a href="listInvoiceDTL?invoiceId=${listInvoice.invoiceId}" class="fw-semibold text-inherit">
                                              <h6 class="mb-0">${listInvoice.colorName}</h6>
                                           </a>
                                           <span><small class="text-muted">${listInvoice.itemName}</small></span>
                                        </td>
                                        <td class="align-middle border-top-0">
                                           <a href="listInvoiceDTL?invoiceId=${listInvoice.invoiceId}" class="text-inherit">#${listInvoice.invoiceId}</a>
                                        </td>
                                        <td class="align-middle border-top-0"><fmt:formatDate value="${listInvoice.convertStrToDate(listInvoice.orderDate)}" pattern="yyyy-MM-dd"/></td>
                                        <td class="align-middle border-top-0">${listInvoice.invoiceDtlQty}</td>
                                        <td class="align-middle border-top-0">
                                           <span class="badge bg-warning">Processing</span>
                                        </td>
                                        <td class="align-middle border-top-0"><fmt:formatNumber type="currency" currencySymbol="₩" value="${listInvoice.price}"/></td>
                                        <td class="text-muted align-middle border-top-0">
                                           <a href="#" class="text-inherit" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="View"><i class="feather-icon icon-eye"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                              </tbody>
                           </table>
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
   </body>
</html>