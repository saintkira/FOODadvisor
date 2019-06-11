$(document).ready(function() {
    $('#txtSearch').keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {//           
            var searcher = $("#txtSearch").val();
            $.post("/FOODadvisor/searchRecipeServlet", {searcher: searcher}, function(data) {
                $('#searchCollapse').html(data);
                $('#searchCollapse').addClass("in");
            });
        }

    });
});

$(document).ready(function() {
    $('#btnRecomment').click(function(event) {
        $.post("/FOODadvisor/recommentServlet", function(data) {
            $('#recommentDiv').html(data);
        });

    });
});

$(document).ready(function() {
    $("#rcmToggle").change(function() {
        if ($(this).is(':checked')) {
            $.post("/FOODadvisor/recommentServlet", function(data) {
                $('#recommentDiv').html(data);
            });
        }
        else {
            $("#recommentDiv").empty();
        }
    });
});

$(document).ready(function() {
    if ($("#recipeListCheck").val() == "") {
        $("#list7daysCollapse").removeClass("in");
    }
    else {
        $("#list7daysCollapse").addClass("in");
    }
});
