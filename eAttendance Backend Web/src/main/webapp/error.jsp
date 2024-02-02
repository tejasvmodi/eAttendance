<%@page import="com.attendance.system.model.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>


<title>eAttendance | Manage Courses</title>

<jsp:include page="components/head-imports.jsp"></jsp:include>

</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- SideBar -->
		<jsp:include page="components/sidebar.jsp"></jsp:include>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<jsp:include page="components/topbar.jsp"></jsp:include>

				<!-- Begin Page Content -->
				<div class="container-fluid">

                    <!-- 404 Error Text -->
                    <div class="text-center">
                        <div class="error mx-auto" data-text="Opps!">Opps!</div>
                        <p class="lead text-gray-800 mb-5">Unknown Error</p>
                        <p class="text-gray-500 mb-0">  <%=request.getAttribute("error")!=null?request.getAttribute("error"):"We are sorry but our server encountered an internal error"%></p>
                        <a href="/home">← Back to Dashboard</a>
                    </div>

                </div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<jsp:include page="components/footer.jsp"></jsp:include>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<jsp:include page="components/models.jsp"></jsp:include>

	<jsp:include page="components/js-imports.jsp"></jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#side-courses").addClass("active")
		});
	</script>
</body>
</html>