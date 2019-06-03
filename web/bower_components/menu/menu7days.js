function dragstart_handler(event) {
    //	event.preventDefault();
    console.log("dragstart - dropEffect: " + event.dataTransfer.dropEffect);

    // Add the target element's id to the data transfer object
    event.dataTransfer.setData("text/plain", event.target.id);
    event.dataTransfer.dropEffect = "copy";

    console.log("dragstart - dropEffect: " + event.dataTransfer.dropEffect + " - dataTransfer: " + event.dataTransfer.getData("text/plain", event.target.id));
}

function dragover_handler(event) {
    event.preventDefault();

    // Set the dropEffect to "move"
    event.dataTransfer.dropEffect = "move";
}

function drop_handler(event) {
    event.preventDefault();

    // Get id src (on recipe list or on menu)
    var id = event.dataTransfer.getData("text/plain");
    // Get id target (on menu)
    var targetId = event.target.getAttribute('id');

    if (id.length > 4) {
        // add icon remove
        var span = document.createElement("span");
//        span.className = "glyphicon glyphicon-remove";
        span.className = "fa fa-times";
        span.id = targetId + "i";
        span.style.cursor = "pointer";
        span.onclick = function() {remove(targetId)};
        event.target.appendChild(span);
        
        // add img
        var data = document.getElementById(id).cloneNode(true);
        data.id = data.id.substr(0, 4);
        data.className = "cycle thumbnail";
        event.target.appendChild(data);
        id = data.id;

    }
    else {
        console.log("move");
        
        // Get parent of src + remove icon remove    
        var parent = document.getElementById(id).parentNode;
        var icon = parent.firstChild;
        icon.onclick = function() {remove(targetId)};
        
        console.log("parent: "+ parent.id);
        
        // Move src to target
        event.target.appendChild(icon);
        event.target.appendChild(document.getElementById(id));
        
        
    }
    
    // Add input for menu
    var input = document.createElement("input");
    input.type = "hidden";
    input.name = targetId;
    input.value = id;
    event.target.appendChild(input);
}

function remove(targetId) {
//    var id = event.target.getAttribute('id');
    console.log("remove target: "+targetId)
    var parent = document.getElementById(targetId);
    while (parent.firstChild) {
        parent.removeChild(parent.firstChild);
    }
}

