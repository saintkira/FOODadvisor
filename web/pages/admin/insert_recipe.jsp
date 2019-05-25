<%-- 
    Document   : insert_recipe
    Created on : May 25, 2019, 7:18:03 PM
    Author     : Toan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>    
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>New Recipe</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <style>
      .img-upload-btn { 
          position: relative; 
          overflow: hidden; 
          padding-top: 95%;
      } 

      .img-upload-btn input[type=file] { 
          position: absolute; 
          top: 0; 
          right: 0; 
          min-width: 100%; 
          min-height: 100%; 
          font-size: 100px; 
          text-align: right; 
          filter: alpha(opacity=0); 
          opacity: 0; 
          outline: none; 
          background: white; 
          cursor: inherit; 
          display: block; 
      } 

      .img-upload-btn i { 
          position: absolute;
          height: 16px;
          width: 16px;
          top: 50%;
          left: 50%;
          margin-top: -8px;
          margin-left: -8px;
      }

      .btn-radio {
          position: relative; 
          overflow: hidden; 
      }

      .btn-radio input[type=radio] { 
          position: absolute; 
          top: 0; 
          right: 0; 
          min-width: 100%; 
          min-height: 100%; 
          font-size: 100px; 
          text-align: right; 
          filter: alpha(opacity=0); 
          opacity: 0; 
          outline: none; 
          background: white; 
          cursor: inherit; 
          display: block; 
      }
  </style>
</head>


<body class="hold-transition skin-green-light sidebar-mini">
    <div class="warper"> 
        <jsp:include page="header.jsp"/>
        <div class="content-wrapper">
           <section class="content-header">
               <!--BREADCRUMB-->
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>
            
            <section class="content">
                <div class="row">
                    <!-- left column -->
                    <form action="../../insertRecipeServlet">
                        <div class="col-md-12">
                            <!-- general form elements -->
                            <!-- form start -->

                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title" style="font-weight: bold; font-size: 24px; color: black">New Recipe</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div class="form-group">
                                        <legend>Add Images</legend> 
                                        <div class="row">
                                            <div class="form-group col-sm-2"> 
                                                <div class="img-picker"></div>
                                            </div> 
                                            <div class="form-group col-sm-2"> 
                                                <div class="img-picker"></div>
                                            </div> 
                                            <div class="form-group col-sm-2"> 
                                                <div class="img-picker"></div>
                                            </div> 
                                            <div class="form-group col-sm-2"> 
                                                <div class="img-picker"></div>
                                            </div> 
                                            <div class="form-group col-sm-2"> 
                                                <div class="img-picker"></div>
                                            </div> 
                                        </div>
                                    </div>
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Recipe Name</label>
                                        <input type="text" class="form-control" placeholder="Recipe Name" name="recipename">
                                    </div>
                                    <div class="form-group">
                                        <label>Generated ID</label>
                                        <input type="text" class="form-control" readonly="true">
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <input type="text" class="form-control" placeholder="Describe your recipe simply!">
                                    </div>
                                    <!-- textarea -->
                                    <div class="form-group">
                                        <label>Ingredients</label>
                                        <textarea class="form-control" rows="3" placeholder="Ingredients List"></textarea>
                                    </div>

                                    <!-- input states 
                                    <div class="form-group has-success">
                                        <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Input with success</label>
                                        <input type="text" class="form-control" id="inputSuccess" placeholder="Enter ...">
                                        <span class="help-block">Help block with success</span>
                                    </div>
                                    <div class="form-group has-warning">
                                        <label class="control-label" for="inputWarning"><i class="fa fa-bell-o"></i> Input with
                                            warning</label>
                                        <input type="text" class="form-control" id="inputWarning" placeholder="Enter ...">
                                        <span class="help-block">Help block with warning</span>
                                    </div>
                                    <div class="form-group has-error">
                                        <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> Input with
                                            error</label>
                                        <input type="text" class="form-control" id="inputError" placeholder="Enter ...">
                                        <span class="help-block">Help block with error</span>
                                    </div>
                                    -->    
                                    <!-- checkbox 
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">
                                                Checkbox 1
                                            </label>
                                        </div>

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">
                                                Checkbox 2
                                            </label>
                                        </div>

                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" disabled>
                                                Checkbox disabled
                                            </label>
                                        </div>
                                    </div>
                                    -->

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">

                                </div>

                            </div>
                            <!-- /.box -->
                            <div class="box collapsed-box">
                                <div class="box-header">
                                    <label>Direction</label>
                                    <small>Please describe direction carefully</small>
                                    <!-- tools box -->
                                    <div class="pull-right box-tools">
                                        <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                                                title="Collapse">
                                            <i class="fa fa-minus"></i></button>
                                    </div>
                                    <!-- /. tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body pad">
                                    <form>
                                        <textarea id="editor1" name="editor1" rows="10" cols="80">
                                        </textarea>
                                    </form>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <!-- /.box -->

                        </div>
                        <!--/.col (left) -->
                    </form>
                    
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
        </div>
        <jsp:include page="footer.jsp"/>
        
        <!-- jQuery 3 -->
        <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>	
        <!-- FastClick -->
        <script src="../../bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../dist/js/demo.js"></script>
        <!-- CK Editor -->
        <script src="../../bower_components/ckeditor/ckeditor.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <script>
          $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1');
          })
        </script>
        <script>
            (function ( $ ) {
            $.fn.imagePicker = function( options ) {

                // Define plugin options
                var settings = $.extend({
                    // Input name attribute
                    name: "",
                    // Classes for styling the input
                    class: "form-control btn btn-default btn-block",
                    // Icon which displays in center of input
                    icon: "glyphicon glyphicon-plus"
                }, options );

                // Create an input inside each matched element
                return this.each(function() {
                    $(this).html(create_btn(this, settings));
                });

            };

            // Private function for creating the input element
            function create_btn(that, settings) {
                // The input icon element
                var picker_btn_icon = $('<i class="'+settings.icon+'"></i>');

                // The actual file input which stays hidden
                var picker_btn_input = $('<input type="file" name="'+settings.name+'" />');

                // The actual element displayed
                var picker_btn = $('<div class="'+settings.class+' img-upload-btn"></div>')
                    .append(picker_btn_icon)
                    .append(picker_btn_input);

                // File load listener
                picker_btn_input.change(function() {
                    if ($(this).prop('files')[0]) {
                        // Use FileReader to get file
                        var reader = new FileReader();

                        // Create a preview once image has loaded
                        reader.onload = function(e) {
                            var preview = create_preview(that, e.target.result, settings);
                            $(that).html(preview);
                        };

                        // Load image
                        reader.readAsDataURL(picker_btn_input.prop('files')[0]);
                    }                
                });

                return picker_btn;
            };

            // Private function for creating a preview element
            function create_preview(that, src, settings) {

                    // The preview image
                    var picker_preview_image = $('<img src="'+src+'" class="img-responsive img-rounded" />');

                    // The remove image button
                    var picker_preview_remove = $('<button class="btn btn-link"><small>Remove</small></button>');

                    // The preview element
                    var picker_preview = $('<div class="text-center"></div>')
                        .append(picker_preview_image)
                        .append(picker_preview_remove);

                    // Remove image listener
                    picker_preview_remove.click(function() {
                        var btn = create_btn(that, settings);
                        $(that).html(btn);
                    });

                    return picker_preview;
            };

        }( jQuery ));

        $(document).ready(function() {
            $('.img-picker').imagePicker({name: 'images'});
            $('img').attr("src","../../avatar/kimquang.jpg");
        });
        </script>
        <!--
        <script>
            $("#btn1").click(function(){
                    console.log( 'Total bytes: ' + CKEDITOR.instances.editor1.getData() );
            });
        </script>
        -->
</body>
</html>

