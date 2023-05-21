<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce Management</title>	
  
    
    <jsp:include page="./layouts/top-html-start-head-tag.jsp"></jsp:include>
  
	
	<link rel="stylesheet" href="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" href="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
	<link rel="stylesheet" href="$ {Pagecontext. Request. contextpath }/../resource/plugins/daterangepicker/daterangepicker.css">
</head>
	
<body class="hold-transition sidebar-mini layout-fixed">
		
		<jsp:include page="./layouts/header.jsp"></jsp:include>
		<jsp:include page="./layouts/sidebar.jsp"></jsp:include>
		
		
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>User List</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Users</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
           <div class="row">
               <div class="col-12">
                  <div class="card">
                      <div class="card-header">
                        <h3 class="card-title">Users List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                  	
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                    <th>Role</th>
                    <th>Created Date</th>
                    <th>Updated Date</th>
                    <th>Created User</th>
                    <th>Updated User</th>
                    <th>Enabled</th>
                    <th>Locked</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  
                  <tbody> 
                      
                         
                  	<c:forEach items="${list}" var="user">  
                  	
                  		                  
		                    <tr>		                    	
		                    	<td>${user.name}</td>
		                    	<td>${user.email}</td>
		                    	<td>${user.phone_number}</td>
		                    	<td>${user.address}</td>
		                    	<td>${user.role_id}</td>
		                    	<td>${user.created_date }</td>
		                    	<td>${user.updated_date }</td>
		                    	<td>-</td>
		                    	<td>${user.updated_user }</td>
		                    	<td>-</td>
		                    	<td>-</td>
		                    	<td>
		                    	<a href="#">Update</a>
								<a href="#">Delete</a>
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
   
  </div>
		
		
		
		
<jsp:include page="./layouts/footer.jsp"></jsp:include>
		
		
<!-- DataTables  & Plugins -->
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/jszip/jszip.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/pdfmake/pdfmake.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/pdfmake/vfs_fonts.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="$ {Pagecontext. Request. contextpath }/../resource/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="$ {Pagecontext. Request. contextpath }/../resource/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="$ {Pagecontext. Request. contextpath }/../resource/dist/js/demo.js"></script>

<jsp:include page="./layouts/script-index.jsp"></jsp:include>
		
</body>
</html>