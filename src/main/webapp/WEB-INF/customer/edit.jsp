<%--
  Created by IntelliJ IDEA.
  User: Ngan
  Date: 22/07/2022
  Time: 1:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hamster Resort</title>
    <%@ include file="/layout/header-p1.jsp" %>
    <!-- App favicon -->
    <link rel="shortcut icon" href="/assets/images/favicon.ico">

    <!-- Notification css (Toast) -->
    <link href="/assets/libs/toastr/css/iziToast.min.css" rel="stylesheet" type="text/css">
    <%--    <link href="/assets/libs/toastr/toastr.min.css" rel="stylesheet" type="text/css">--%>

    <!-- Plugins css -->
    <link href="/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">
    <link href="/assets/libs/switchery/switchery.min.css" rel="stylesheet" type="text/css">

    <link href="/assets/libs/select2/select2.min.css" rel="stylesheet" type="text/css">
    <link href="/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet">
    <link href="/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
    <link href="/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="/assets/libs/bootstrap-datepicker/bootstrap-datepicker.css" rel="stylesheet">

    <script src="/assets/libs/toastr/js/iziToast.min.js"></script>

    <%@ include file="/WEB-INF/layout/header-p2.jsp" %>
</head>

<body>

<!-- Begin page -->
<div id="wrapper">

    <!-- Topbar Start -->
    <%@ include file="/WEB-INF/layout/topbar.jsp" %>
    <!-- end Topbar --> <!-- ========== Left Sidebar Start ========== -->

    <div class="left-side-menu">

        <div class="slimscroll-menu">

            <!--- Sidemenu -->
            <div id="sidebar-menu">
                <%@ include file="/WEB-INF/layout/sidebar-left.jsp" %>
            </div>
            <!-- End Sidebar -->

            <div class="clearfix"></div>

        </div>
        <!-- Sidebar -left -->
    </div>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h2 class= "mb-4 text-secondary">CHỈNH SỬA KHÁCH HÀNG</h2>

                                <form class="parsley-examples" method="post" novalidate autocomplete="off">
                                    <div class="row mt-3">
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="name">Họ Và tên <span class="text-danger">*</span></label>
                                            <input type="text" name="name" parsley-trigger="change" required="" placeholder="Nhập tên" class="form-control" id="name" value="${customer.getName()}">
                                        </div>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="birthday">Ngày sinh<span class="text-danger">*</span></label>
                                            <input type="date" name="birthday" parsley-trigger="change" required="" placeholder="Nhập ngày sinh" class="form-control" id="birthday" value = "${customer.getBirthday()}"  >
                                        </div>

                                        <div class="form-group col-lg-4 col-md-6 col-sm-12" >
                                            <label for="gender">Giới tính<span class="text-danger">*</span></label>
                                            <select class="form-control" data-toggle="select2" id="gender" name="gender">
                                                <option disabled ${customer.getGender() == null ? "selected" : ""}>- Chọn giới tính -</option>
                                                <option value="1">Nam</option>
                                                <option value="2">Nữ</option>
                                                <option value="3">LGBT</option>

                                            </select>
                                        </div>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="id_card">Thẻ khách hàng<span class="text-danger">*</span></label>
                                            <input id="id_card" name="id_card" type="text" value="${customer.getIdCard()}" required="" class="form-control">
                                        </div>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="phone">Số điện thoại<span class="text-danger">*</span></label>
                                            <input type="text" name="phone" placeholder=""  value="${customer.getPhone()}" class="form-control" id="phone">
                                        </div>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="email">Email<span class="text-danger">*</span></label>
                                            <input type="text" name="email" placeholder="" required="" value="${customer.getEmail()}" class="form-control" id="email">
                                        </div>
                                    </div>

                                    <div class="row mt-3">
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="address">Địa chỉ<span class="text-danger">*</span></label>
                                            <input type="text" name="address" placeholder="" required="" value="${customer.getAddress()}" class="form-control" id="address">
                                        </div>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="customer">Loại tài khoản<span class="text-danger">*</span></label>
                                            <select class="form-control" data-toggle="select2" id="customer" name="customer_type_id">
                                                <option disabled ${customer.getCustomerTypeId() == null ? "selected" : ""}>- Chọn loại tài khoản -</option>
                                                <option value="1">Diamond</option>
                                                <option value="2">Platinium</option>
                                                <option value="3">Gold</option>
                                                <option value="4">Siliver</option>
                                                <option value="5">Member</option>
                                            </select>
                                        </div>

                                    <div class="form-group text-right mb-0">
                                        <button class="btn btn-secondary waves-effect waves-light mr-1" type="submit">
                                            Update
                                        </button>
                                        <a href="/customer" class="btn btn-dark waves-effect waves-light">
                                            <span>Back</span>
                                        </a>
                                    </div>
                            </div>


        <%@ include file="/WEB-INF/layout/footer.jsp" %>

                                    <!-- Footer Start -->
                                    <footer class="footer">
                                        <div class="container-fluid">

                                            <c:choose>
                                                <c:when test = "${requestScope['message'] == null}" >
                                                </c:when>
                                                <c:when test='${requestScope["message"] == "Thêm sản phẩm thành công!"}'>
                                                    <%@ include file="/alert/success.jsp"%>
                                                </c:when>
                                                <c:otherwise>
                                                    <%@ include file="/alert/warning.jsp"%>
                                                </c:otherwise>
                                            </c:choose>

                                            <c:if test='${requestScope["errors"] != null}'>
                                                <%@ include file="/alert/danger.jsp"%>
                                            </c:if>
                                        </div>
                                    </footer>
                                    <!-- end Footer -->
                                    <div class="row">
                                        <div class="col-md-12">
                                            2022 © HAMSTER RESORT MANAGEMENT
                                        </div>
                                    </div>

                            </div>
    </div>

</div>
<!-- END wrapper -->


<!-- Right Sidebar -->
<%--<%@ include file="/layout/sidebar-right.jsp" %>--%>
<!-- /Right-bar -->

<!-- Right bar overlay-->
<%--<div class="rightbar-overlay"></div>--%>

<!-- Vendor js -->
<script src="/assets/js/vendor.min.js"></script>

<!-- Toast js -->

<%--<script src="/assets/libs/toastr/toastr.min.js"></script>--%>

<%--<script src="/assets/js/pages/toastr.init.js"></script>--%>

<!-- Plugin js-->
<script src="/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="/assets/libs/switchery/switchery.min.js"></script>
<script src="/assets/libs/select2/select2.min.js"></script>
<script src="/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="/assets/libs/jquery-mask-plugin/jquery.mask.min.js"></script>
<script src="/assets/libs/moment/moment.min.js"></script>
<script src="/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
<script src="/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

<!-- Validation init js-->
<script src="/assets/js/pages/form-validation.init.js"></script>

<!-- Init js-->
<script src="/assets/js/pages/form-advanced.init.js"></script>

<!-- App js -->
<script src="/assets/js/app.min.js"></script>
</body>
</html>
