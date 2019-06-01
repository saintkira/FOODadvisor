function checkDate(checkDate) {
    var cDate = checkDate.substr(checkDate.length - 4);
    var today = new Date();
    var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();

    if (checkDate !== "") {
        if (checkDate.includes("d")||checkDate.includes("m")||checkDate.includes("y")) {
            return "Please fully input Dob following dd/MM/yyyy";
        }
        else if(today.getFullYear() - cDate < 18) {
            return "Year old must be greater than 18";
        }        
    }    
        return "";
    
}

function checkNameLength(checkName) {
    if (checkName !== "") {
        if (checkName.length > 30) {
            return "Length of name must be smaller than 30 characters";
        }
    }
    return "";
}



