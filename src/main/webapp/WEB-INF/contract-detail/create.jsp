<%--
  Created by IntelliJ IDEA.
  User: Ngan
  Date: 22/07/2022
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hamster Resort</title>
    <%@ include file="/WEB-INF/layout/header-p1.jsp" %>
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
                                <h2 class="mb-4 text-purple">QUẢN LÝ CHI TIẾT HỢP ĐỒNG</h2>
                                <p class="text-center">
                                    <c:if test='${requestScope["message"] != null}'>
                                        <span class="message  text-success">${requestScope["message"]}</span>
                                    </c:if>
                                </p>

                                <form class="parsley-examples" method="post" autocomplete="off">
                                    <div class="row mt-3">

                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="contract_id">ID hợp đồng<span class="text-danger">*</span></label>
                                            <input type="number" name="contract_id" placeholder="Nhập ID hợp đồng" required=""
                                            <%--                                                   value="${customer.getPhone()}" --%>
                                                   class="form-control" id="contract_id">
                                        </div>



<%--                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">--%>
<%--                                            <select class="form-select" aria-label="Default select example" name="accompanied_service_id">--%>
<%--                                            <option selected>Chọn ID dịch vụ đính kèm</option>--%>
<%--                                            <c:forEach items="${requestScope['accompaniedServiceList']}" var="accompaniedService">--%>
<%--                                                <option value="${accompaniedService.getId()}">${accompaniedService.getName()}</option>--%>
<%--                                            </c:forEach>--%>
<%--                                            </select>--%>
<%--                                        </div>--%>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="accompanied_service_id">Chọn dịch vụ đính kèm<span class="text-danger">*</span></label>
                                            <select class="form-control" data-toggle="select2" id="accompanied_service_id" name="accompanied_service_id">
                                                <option disabled ${contract-detail == null ? "selected" : ""}>- Chọn dịch vụ đính kèm -</option>
                                                <option value="1">Massage</option>
                                                <option value="2">Karaoke</option>
                                                <option value="3">Thức ăn</option>
                                                <option value="4">Nước uống</option>
                                                <option value="5">Thuê xe</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-4 col-md-6 col-sm-12">
                                            <label for="quantity">Số lượng<span class="text-danger">*</span></label>
                                            <input type="number" name="quantity" placeholder="Nhập số lượng" required=""
                                            <%--                                                   value="${customer.getPhone()}" --%>
                                                   class="form-control" id="quantity">
                                        </div>

                                    </div>

                                    <div class="row mt-3">


                                        <div class="form-group text-right mb-0">
                                            <button class="btn btn-purple waves-effect waves-light mr-1" type="submit">
                                                Tạo hợp đồng chi tiết mới
                                            </button>
                                            <a href="/contract-detail" class="btn btn-secondary waves-effect waves-light">
                                                <span>Quay trở lại</span>
                                            </a>
                                            <p class="text-center">
                                                <c:if test='${requestScope["message"] != null}'>
                                                    <span class="message  text-success">${requestScope["message"]}</span>
                                                </c:if>
                                                <c:if test='${requestScope["success"] != null}'>
                                                    <span class="message  text-success">${requestScope["success"]}</span>
                                                </c:if>
                                            </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="/WEB-INF/layout/footer.jsp" %>
        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        2022 © HAMSTER RESORT MANAGEMENT
                    </div>
                </div>

                <c:choose>
                    <c:when test = "${requestScope['message'] == null}" >
                    </c:when>
                    <c:when test='${requestScope["message"] == "Thêm hợp đồng chi tiết thành công!"}'>
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

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->

</div>
<!-- END wrapper -->

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
