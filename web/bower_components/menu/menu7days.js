function dragstart_handler(event) {
    //	event.preventDefault();
//    console.log("dragstart - dropEffect: " + event.dataTransfer.dropEffect);

    // Add the target element's id to the data transfer object
    event.dataTransfer.setData("text/plain", event.target.id);
    event.dataTransfer.dropEffect = "copy";

//    console.log("dragstart - dropEffect: " + event.dataTransfer.dropEffect + " - dataTransfer: " + event.dataTransfer.getData("text/plain", event.target.id));
}

function dragover_handler(event) {
    event.preventDefault();

    // Set the dropEffect to "move"
    event.dataTransfer.dropEffect = "move";
    
}

//function drop_handler(event) {
//    event.preventDefault();
//
//    // Get id src (on recipe list or on menu)
//    var id = event.dataTransfer.getData("text/plain");
//    // Get id target (on menu)
//    var targetId = event.target.getAttribute('id');
//
//    if (id.length > 4) {
//        // add icon remove
//        var span = document.createElement("span");
////        span.className = "glyphicon glyphicon-remove";
//        span.className = "fa fa-times";
//        span.id = targetId + "i";
//        span.style.cursor = "pointer";
//        span.onclick = function() {remove(targetId)};
//        event.target.appendChild(span);
//        
//        // add img
//        var data = document.getElementById(id).cloneNode(true);
//        data.id = data.id.substr(0, 4);
//        data.className = "cycle thumbnail";
//        event.target.appendChild(data);
//        id = data.id;
//
//    }
//    else {
//        console.log("move");
//        
//        // Get parent of src + remove icon remove    
//        var parent = document.getElementById(id).parentNode;
//        var icon = parent.firstChild;
//        icon.onclick = function() {remove(targetId)};
//        
//        console.log("parent: "+ parent.id);
//        
//        // Move src to target
//        event.target.appendChild(icon);
//        event.target.appendChild(document.getElementById(id));
//        
//        
//    }
//    
//    // Add input for menu
//    var input = document.createElement("input");
//    input.type = "hidden";
//    input.name = targetId;
//    input.value = id;
//    event.target.appendChild(input);
//}

function drop_handler(event) {
    event.preventDefault();

    // Get id src (on recipe list or on menu)
    var id = event.dataTransfer.getData("text/plain");  //Rxxx_src or RxxxBx, RxxxLx, RxxxDx
    var rID = id.substr(0, 4);   //Rxxx

    // Get id target (on menu)
    var targetId = event.target.getAttribute('id'); //Bx, Lx, Dx
    var rTargetId = rID + targetId; // RxxxBx, RxxxLx, RxxxDx

    var container = document.getElementById(targetId);
    if(document.getElementById(rTargetId) != null){
        alert("You have chosed this recipe, please choose another...");
        container.style.background = "#fff";
        return;
    }
    
    if (id.length > 6) {//Rxxx_src

        // add icon remove
        var span = document.createElement("span");
        span.className = "fa fa-times";
        span.id = rTargetId + "i";
        span.style.cursor = "pointer";
        span.onclick = function() {
            remove(rTargetId)
        };
        event.target.appendChild(span);

        // add img
        var data = document.getElementById(id).cloneNode(true);
        data.id = rTargetId;
        data.className = "cycle thumbnail";
        event.target.appendChild(data);

        // Add input for menu
        var input = document.createElement("input");
        input.id = rTargetId + "ip";
        input.type = "hidden";
        input.name = targetId;
        input.value = rID;
        event.target.appendChild(input);
    }
    else {//RxxxBx of pre-container

        // Get icon of src + move icon and src            
        var icon = document.getElementById(id + "i");
        icon.id = rTargetId + "i";
        icon.onclick = function() {
            remove(rTargetId)
        };
        
        // Get img + change img-id
        var img = document.getElementById(id);
        img.id = rTargetId;

        // Get imput + chang input-id
        var input = document.getElementById(id + "ip");
        input.id = rTargetId + "ip";
        input.name = targetId;

        // Move src to target
        event.target.appendChild(icon);
        event.target.appendChild(img);
        event.target.appendChild(input);

    }
    
    container.style.background = "#fff";
}

//function remove(rTargetId) {
//    var id = event.target.getAttribute('id');
//    var parent = document.getElementById(targetId);
//    while (parent.firstChild) {
//        parent.removeChild(parent.firstChild);
//    }
//}

function remove(rTargetId) {
//    var containerId = rTargetId.substr(4, 2);
    var iconId = rTargetId + "i";
//    var imgId = rTargetId.substr(0, 4) + containerId;

    var imgTarget = document.getElementById(rTargetId);
    var iconTarget = document.getElementById(iconId);
    var inputTarget = document.getElementById(rTargetId+"ip");

    imgTarget.parentNode.removeChild(imgTarget);
    iconTarget.parentNode.removeChild(iconTarget);
    inputTarget.parentNode.removeChild(inputTarget);
    
    
}

function mark(event){
    var id = event.target.getAttribute("id");
    var target_div = document.getElementById(id);
    
    target_div.style.background = "#999";
}

function unmark(event){
    var id = event.target.getAttribute("id");
    var target_div = document.getElementById(id);
    
    target_div.style.background = "#fff";
}


