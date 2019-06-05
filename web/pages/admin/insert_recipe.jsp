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
  <link rel="stylesheet" href="../../bower_components/css_js_toan/sol.css"

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
                    <form>
                        <div class="col-md-12">
                            <!-- general form elements -->
                            <!-- form start -->

                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title" style="font-weight: bold; font-size: 24px; color: black">New Recipe</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    
                                    <!-- text input -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Generated ID</label>
                                                <input type="text" class="form-control" readonly="true" value="${NewID}">
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group" id="fg-rname">
                                                    <label>Recipe Name</label>
                                                    <input name="recipename" type="text" class="form-control" placeholder="Recipe Name">
                                                    <span class="help-block" id="error-rname"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-bottom:0px;">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group" id="fg-rdescription">
                                                    <label>Description</label>
                                                    <input name="recipedescription" type="text" class="form-control" placeholder="Describe your recipe simply!" style="margin-bottom: 10px">
                                                    <span class="help-block" id="error-description"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Tag</label>
                                                <select id="my-select" name="character" multiple="multiple">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:0px">
                                        <div class="row">
                                            <div class="col-md-6">
                                            <div class="form-group" id="fg-rtype">
                                                <label></label>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input name="Maincourse" value="Maincourse" onclick="checktype(this)" type="checkbox">
                                                                Maincourse
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input name="Appetizer" value="Appetizer" onclick="checktype(this)" type="checkbox">
                                                                Appetizer
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input name="Salad" value="Salad" onclick="checktype(this)" type="checkbox">
                                                                Salad
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input name="Desert" value="Desert" onclick="checktype(this)" type="checkbox">
                                                                Desert
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <span class="help-block" id="error-rtype"></span>
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group" id="fg-rprice">
                                                <label>Price</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">$</span>
                                                        <input name="recipeprice" type="text" maxlength="5" class="money form-control" id="money"/>
                                                    </div>
                                                    <span class="help-block" id="error-price"></span>
                                                </div>    
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top:0px">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group" id="fg-ringred">
                                                <label>Ingredients</label>
                                                <textarea name="recipeingred" class="form-control" rows="3" placeholder="Ingredients List"></textarea>
                                                <span class="help-block" id="error-ingred"></span>
                                                </div>
                                            </div>
                                        </div>
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

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">

                                </div>

                            </div>
                            <!-- /.box -->

                            <div class="box">
                                <div class="box-header">
                                    <label class="rdirection">Direction</label>
                                    <small class="rdirection">Please describe direction carefully</small>
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
                            
                            
                            <div class="box">
                                <div class="box-header">
                                    <label class="rimage">Image</label>
                                    <small class="rimage">Please upload at least 1 image</small>
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
                                    <div class="form-group">
                                        <div class="row">
                                            <div id="coba"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- /.box -->

                        </div>
                        <!--/.col (left) -->
                    </form>
                    <button onclick="validate();" class="btn btn-primary" style="margin-left: 50px;">Submit</button>
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
        <!-- InputMask -->
        <script src="../../bower_components/css_js_toan/jquery.mask.min.js"></script>
        <script>
          $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1');
            $('.money').mask('##0.0', {reverse: true});
          })
        </script>
        
        
        <script type="text/javascript" src="../../bower_components/css_js_toan/spartan-multi-image-picker.js"></script>

        <script type="text/javascript">
        $(function(){

                $("#coba").spartanMultiImagePicker({
                        fieldName:        'fileUpload[]',
                        maxCount:         6,
                        allowedExt:       'png|jpg|jpeg',
                        rowHeight:        '200px',
                        groupClassName:   'col-md-3 col-sm-4 col-xs-6',
                        maxFileSize:      '400000',
                        placeholderImage: {
                            image: '../../bower_components/css_js_toan/placeholder.png',
                            width : '100%'
                        },
                        dropFileLabel : "Drop Here",
                        onAddRow:       function(index){
                                console.log(index);
                                console.log('add new row');
                        },
                        onRenderedPreview : function(index){
                                console.log(index);
                                console.log('preview rendered');
                        },
                        onRemoveRow : function(index){
                                console.log(index);
                        },
                        onExtensionErr : function(index, file){
                                console.log(index, file,  'extension err');
                                alert('Please only input png or jpg type file')
                        },
                        onSizeErr : function(index, file){
                                console.log(index, file,  'file size too big');
                                alert('File size too big');
                        }
                });
        });
	</script>
        <script src="../../bower_components/css_js_toan/sol.js"></script>
        <script type="text/javascript">
            function loadTaglist(){
                $('#my-select').searchableOptionList({
                    maxHeight: '200px',
                    showSelectAll: false,
                    allowNullSelection: true,
                    texts:{
                       noItemsAvailable: 'Go on, no tag was selected',
                       selectNone: 'Deselect all',
                       searchplaceholder: 'Tag List'
                    }
                });
            };
            $(document).ready(function(){
                $.ajax({
                url : '../../getTagforinsServlet',
                success : function(responseText) {
                    $("#my-select").html(responseText);
                    loadTaglist();
                }
                });
            });
        </script>
        <script>
            function validate(){
                
                name=$("input[name=recipename]").val().toString();
                if (name.length<3 || name.length>50 || name.match(/[ ]*/i)==true) {
                    $("#fg-rname").addClass("has-error");
                    $("#error-rname").html("Name must between 3 and 50 characters!!!");
                }else{
                    $("#fg-rname").removeClass("has-error");
                    $("#error-rname").html("");
                }
                
                description=$("input[name=recipedescription]").val().toString();
                if (description.length<15 || description.length>80 || description.match(/[ ]*/i)==true) {
                    $("#fg-rdescription").addClass("has-error");
                    $("#error-description").html("Description must between 15 and 80 characters!!!");
                }else{
                    $("#fg-rdescription").removeClass("has-error");
                    $("#error-description").html("");
                }
                
                price=$("input[name=recipeprice]").val().toString();
                if (price=="" || price==null || parseInt(price.replace(".",""))<=0) {
                    $("#fg-rprice").addClass("has-error");
                    $("#error-price").html("Price cannot be blank and must be greater than 0");
                }else{
                    $("#fg-rprice").removeClass("has-error");
                    $("#error-price").html("");
                }
                
                ingreds=$("textarea[name=recipeingred]").val().toString();
                if (ingreds.length<15 || ingreds.match(/[ ]*/i)==true) {
                    $("#fg-ringred").addClass("has-error");
                    $("#error-ingred").html("List of ingredients must contains 15 characters or above!!!");
                }else{
                    $("#fg-ringred").removeClass("has-error");
                    $("#error-ingred").html("");
                }
                
                if (document.getElementsByName("Appetizer")[0].checked==false && document.getElementsByName("Desert")[0].checked==false && document.getElementsByName("Salad")[0].checked==false && document.getElementsByName("Maincourse")[0].checked==false){
                    $("#fg-rtype").addClass("has-error");
                    $("#error-rtype").html("Please choose at least one option!!");
                }else{
                    $("#fg-rtype").removeClass("has-error");
                    $("#error-rtype").html("");
                }
                
                if (CKEDITOR.instances.editor1.document.getBody().getText().length<15 || CKEDITOR.instances.editor1.document.getBody().getText().length>250) {
                    $(".rdirection").css("color","rgb(205,50,50)");
                }else{
                    $(".rdirection").css("color","");
                }
                
                recipeimg = document.getElementsByClassName("img_");
                if (recipeimg.length<=1) {
                    $(".rimage").css("color","rgb(205,50,50)");
                }else{
                    $(".rimage").css("color","");
                }

            }
        </script>
        
        <script>
            function checktype(x){
                tempType = x.name.toString();
                checkStatus = x.checked;
                if (tempType=="Maincourse") {
                    if (checkStatus==true) {
                        $("input[name=Salad]").attr("disabled", true);
                        $("input[name=Appetizer]").attr("disabled", true);
                        $("input[name=Desert]").attr("disabled", true);
                    }else{
                        $("input[name=Salad]").removeAttr("disabled");
                        $("input[name=Appetizer]").removeAttr("disabled");
                        $("input[name=Desert]").removeAttr("disabled");
                    }
                }else if(tempType=="Desert") {
                    if (checkStatus==true) {
                        $("input[name=Salad]").attr("disabled", true);
                        $("input[name=Appetizer]").attr("disabled", true);
                        $("input[name=Maincourse]").attr("disabled", true);
                    }else{
                        $("input[name=Salad]").removeAttr("disabled");
                        $("input[name=Appetizer]").removeAttr("disabled");
                        $("input[name=Maincourse]").removeAttr("disabled");
                    }
                }else{
                    checkAppetizer = document.getElementsByName("Appetizer")[0].checked;
                    checkSalad = document.getElementsByName("Salad")[0].checked;
                    if (checkAppetizer==true||checkSalad==true) {
                        $("input[name=Desert]").attr("disabled", true);
                        $("input[name=Maincourse]").attr("disabled", true);
                    }else{
                        $("input[name=Desert]").removeAttr("disabled");
                        $("input[name=Maincourse]").removeAttr("disabled");
                    }
                }
                
            }
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

