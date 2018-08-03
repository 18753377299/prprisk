
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Editors</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<!-- Font Awesome -->
<!-- Ionicons -->
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<!-- bootstrap wysihtml5 - text editor -->
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-info">
					<div class="box-header">
						<h3 class="box-title">
							CK Editor <small>Advanced and full of features</small>
						</h3>
						<!-- tools box -->
						<div class="pull-right box-tools">
							<button class="btn btn-info btn-sm" data-widget="collapse"
								data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button class="btn btn-info btn-sm" data-widget="remove"
								data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
						<!-- /. tools -->
					</div>
					<!-- /.box-header -->
					<div class="box-body pad">
						<form>
							<textarea id="editor1" name="editor1" rows="10" cols="80">
                                            This is my textarea to be replaced with CKEditor.
                    </textarea>
						</form>
					</div>
				</div>
				<!-- /.box -->

				<div class="box">
					<div class="box-header">
						<h3 class="box-title">
							Bootstrap WYSIHTML5 <small>Simple and fast</small>
						</h3>
						<!-- tools box -->
						<div class="pull-right box-tools">
							<button class="btn btn-default btn-sm" data-widget="collapse"
								data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button class="btn btn-default btn-sm" data-widget="remove"
								data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
						<!-- /. tools -->
					</div>
					<!-- /.box-header -->
					<div class="box-body pad">
						<form>
							<textarea class="textarea" placeholder="Place some text here"
								style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
						</form>
					</div>
				</div>
			</div>
			<!-- /.col-->
		</div>
		<!-- ./row -->
	</section>
	<!-- /.content -->

	<!-- jQuery 2.1.4 -->
	<!-- Bootstrap 3.3.5 -->
	<!-- FastClick -->
	<!-- AdminLTE App -->
	<!-- AdminLTE for demo purposes -->
	<!-- CK Editor -->
	<script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="${ctx}/static/adminlte/${adminlte_version}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
		type='text/javascript' charset="utf-8"></script>
	<script>
      $(function () {
        //  Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor1');
        
        /* CKEDITOR.on('instanceReady',function(event){
        	editor=event.editor;
        	editor.execCommand("toolbarCollapse");
        	editor.setReadOnly(true); //只读
        } */
        //bootstrap WYSIHTML5 - text editor
        $(".textarea").wysihtml5();
      });
    </script>
</body>
</html>
