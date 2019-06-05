$(document).ready(function() {
	
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.profile-pic').attr('src', e.target.result);
            };
    
            reader.readAsDataURL(input.files[0]);
        }
    };
    
    $("#saveBtn").click(function(){
        
        var fd = new FormData();
        var ext = document.getElementById("file").value;//GET Filename for extension
        console.log(ext);
        fd.append('file', document.getElementById("file").files[0]);
        fd.append('ext',ext);
        var req;
        if (window.ActiveXObject) {
            req = new ActiveXObject();
        } else {
            req = new XMLHttpRequest();
        }
        req.open("post", "../saveAvatarServlet", true);
        location.reload();
        req.send(fd); 
        
    });
    
    $(".file-upload").on('change', function(){
        readURL(this);
    });
    
    $(".upload-button").on('click', function() {
       $(".file-upload").click();
    });
});