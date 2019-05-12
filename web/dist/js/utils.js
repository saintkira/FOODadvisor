Number.prototype.pad = function(size) {
    var s = String(this);
    while (s.length < (size || 2)) {s = "0" + s;}
    return s;
}

/*
 * Automaticaly gen UUID for a object
 */
function uuidv4() {
    //// return uuid of form xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
    var uuid = '', ii;
    for (ii = 0; ii < 32; ii += 1) {
        switch (ii) {
            case 8:
            case 20:
                uuid += '-';
                uuid += (Math.random() * 16 | 0).toString(16);
                break;
            case 12:
                uuid += '-';
                uuid += '4';
                break;
            case 16:
                uuid += '-';
                uuid += (Math.random() * 4 | 8).toString(16);
                break;
            default:
                uuid += (Math.random() * 16 | 0).toString(16);
        }
    }
    return uuid;
}
/*
*   Show Alert
*/
function showAlert(message) {
    new Noty({
        layout: 'topCenter',
        type: 'alert',
        timeout: 2500,
        theme: 'mint',
        text: message,
        closeWith: ['click', 'button'],
        animation: {
            open: 'animated fadeInRight',
            close: 'animated fadeOutRight'
        }
    }).show();
}

/*
 *   Show Error
 */
function showError(message) {
    new Noty({
        layout: 'topRight',
        theme: 'mint',
        type: 'error',
        timeout: 2500,
        text: '<div class="alert alert-danger alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><h4><i class="icon fa fa-warning"></i> エラー!</h4>' + message + '</div>'
        //text: '<div><span><i class="icon fa fa-ban"></i> ERROR!</span><br/><span>'+message+'</span></div>'
    }).show();


}

/*
 *   Show Warning
 */
function showWarning(message) {
    new Noty({
        layout: 'topCenter',
        theme: 'mint',
        type: 'warning',
        timeout: 2500,
        text: message,
        closeWith: ['click', 'button'],
        animation: {
            open: 'animated fadeInRight',
            close: 'animated fadeOutRight'
        }
    }).show();
}

/*
*   Show Alert
*/
function showInfo(message) {
    new Noty({
        layout: 'topCenter',
        type: 'info',
        theme: 'mint',
        timeout: 2500,
        text: message,
        closeWith: ['click', 'button'],
        animation: {
            open: 'animated fadeInRight',
            close: 'animated fadeOutRight'
        }
    }).show();
}


/*
* Hide loading spinner
*/
function hideSpinner() {
    $('.loading-spinner').css('display', 'none');
}

/*
* Show loading spinner
*/
function showSpinner() {
    $('.loading-spinner').css('display', 'flex');
}

function showToastr(type, title, message) {
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };
    toastr[type](message, title);
}

function splitStringToArray(str, split) {
    return str.trim().split(split);
}

function checkKanji(string) {
    var filter = /^[\u4e00-\u9faf]+\s*$/;
    return filter.test(string);
}

function checkHiragana(string) {
    var filter = /^[\u3040-\u309f]+\s*$/;
    return filter.test(string);
}

function checkKatakana(string) {
    var filter = /^[\u30a0-\u30ff]+\s*$/;
    return filter.test(string);
}

// when data_type === "Mix"
function mixDataType(dateString) {

    var date = null;
    var formatType = null;
    var value = [];

    // Date Format 1 : 2018/1/31 --> "Date1"
    var filterFormat1 = /^([0-9０-９]{4})([/])([0-9０-９]{1,2})([/])([0-9０-９]{1,2})$/;

    // Date Format 2 : 平成30年1月31日 --> "Date2"
    var filterFormat2 = /^([\u4E00-\u9FAF]{2})([0-9０-９]{1,2})\u5e74([0-9０-９]{1,2})\u6708([0-9０-９]{1,2})\u65e5$/;

    // Date Format 3 : H30.1.31 --> "Date3"
    var filterFormat3 = /^([A-Z])([0-9０-９]{2})[.]([0-9０-９]{1,2})[.]([0-9０-９]{1,2})$/;

    // Date Format 4 : 2018年1月31日 --> "Date4"
    var filterFormat4 = /^([0-9０-９]{4})\u5e74([0-9０-９]{1,2})\u6708([0-9０-９]{1,2})\u65e5$/;

    // Date Format 5.1: 西暦19YY年MM月DD日 --> "Date5.1"
    var filterFormat5_1 = /^(\u897f\u66a619([0-9０-９]{2})\u5e74([0-9０-９]{1,2})\u6708([0-9０-９]{1,2})\u65e5)/;

    // Date Format 5.2: 西暦20YY年MM月DD日 --> "Date5.2"
    var filterFormat5_2 = /^(\u897f\u66a620([0-9０-９]{2})\u5e74([0-9０-９]{1,2})\u6708([0-9０-９]{1,2})\u65e5)/;

    // Date Format 5 : 西暦2018年1月31日 --> "Date5"
    var filterFormat5 = /^(\u897f\u66a6([0-9０-９]{4})\u5e74([0-9０-９]{1,2})\u6708([0-9０-９]{1,2})\u65e5)/;
    
    // Email Format : emailaddress@ctc-g.co.jp --> "Email"
    var filterFormat6 = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    
    // Date Format 6 : 181203 --> "Date6"
    var filterFormat7 = /^([0-9０-９]{2})([0-9０-９]{2})([0-9０-９]{2})/;
    
    // Date Format 6 but containing SPACE --> "Date6.1"
    var filterFormat7_1 = /^([0-9０-９]{2}|(\s[0-9０-９])|([0-9０-９]\s)|(\s{2}))([0-9０-９]{2}|(\s[0-9０-９])|([0-9０-９]\s)|(\s{2}))([0-9０-９]{2}|(\s[0-9０-９])|([0-9０-９]\s)|(\s{2}))/

    // Date Format 7 : 20190108 --> "Date7"
    var filterFormat8 = /^([0-9０-９]{4})([0-9０-９]{2})([0-9０-９]{2})/;

    if (filterFormat1.test(dateString)) {
        var match = filterFormat1.exec(dateString);
        // date = new Date(match[1] + "/" + match[3] + "/" + match[5]);
        value = [Number(match[1]).pad(4), Number(match[3]).pad(2), Number(match[5]).pad(2)];
        formatType = "Date1";
    }
    else if (filterFormat2.test(dateString)) {
        var match = filterFormat2.exec(dateString);

        value = [match[1], Number(match[2]).pad(2), Number(match[3]).pad(2), Number(match[4]).pad(2)];
        formatType = "Date2";
    }
    else if (filterFormat3.test(dateString)) {
        var match = filterFormat3.exec(dateString);
        var gengou;
        switch (match[1]) {
            case "M":
                gengou = "明治";
                break;
            case "T":
                gengou = "大正";
                break;
            case "S":
                gengou = "昭和";
                break;
            case "H":
                gengou = "平成";
                break;
        }
        value = [match[1], Number(match[2]).pad(2), Number(match[3]).pad(2), Number(match[4]).pad(2)];
        formatType = "Date3";
    }
    else if (filterFormat4.test(dateString)) {
        var match = filterFormat4.exec(dateString);
        value = [Number(match[1]).pad(4), Number(match[2]).pad(2), Number(match[3]).pad(2)];
        formatType = "Date4";
    }
    else if (filterFormat5.test(dateString)) {
        var match = filterFormat5.exec(dateString);

        value = [Number(match[2]).pad(4), Number(match[3]).pad(2), Number(match[4]).pad(2)];
        formatType = "Date5";
    }
    else if (filterFormat5_1.test(dateString)) {
        var match = filterFormat5.exec(dateString);

        value = [Number("19" + match[2]), Number(match[3]).pad(2), Number(match[4]).pad(2)];
        formatType = "Date5.1";
    }
    else if (filterFormat5_2.test(dateString)) {
        var match = filterFormat5.exec(dateString);

        value = [Number("20" +match[2]), Number(match[3]).pad(2), Number(match[4]).pad(2)];
        formatType = "Date5.2";
    }
    else if (filterFormat6.test(dateString)) {
        var match = filterFormat6.exec(dateString);
        value = [match[1], match[5]];
        formatType = "Email";
    } 
    else if (filterFormat8.test(dateString) && dateString.length === 8) {
        var match = filterFormat8.exec(dateString);

        value = [Number(match[1]).pad(4), Number(match[2]).pad(2), Number(match[3]).pad(2)];
        formatType = "Date7";
    }
    else if (filterFormat7.test(dateString)) {
        var match = filterFormat7.exec(dateString);

        value = [Number(match[1]).pad(2), Number(match[2]).pad(2), Number(match[3]).pad(2)];
        formatType = "Date6";
    }
    else if (filterFormat7_1.test(dateString) && dateString.length === 6) {
        var match = filterFormat7_1.exec(dateString);

        value = [Number(match[1].replace(/\s+/g, '')).pad(2), 
                Number(match[5].replace(/\s+/g, '')).pad(2), 
                Number(match[9].replace(/\s+/g, '')).pad(2)];
        formatType = "Date6.1";
    }

    return { format: formatType, value: value };
}

function emailDataType(emailString) {
    if (!emailString) return ["", ""]; // empty string
    var result =  XRegExp.exec(emailString, XRegExp('^((?<pre>.*)#@#(?<post>.*))?$'));
    if(result == null) return [emailString,""];

    return [result.pre, result.post];
}

function likelihoodValidation(value) {
    if (value == "" || value == null)
        return true;
    if (!isNaN(Number(value))) {
        value = _toFixed(parseFloat(value));
        if (value >= 0 && value <= 1)
            return true;
    }
    return false;
}

function checkLikelihoods(low, medium, high, isNullable, skipMode) {
    
    if (likelihoodValidation(low) && likelihoodValidation(medium) && likelihoodValidation(high)) {
        if (low == "" && medium == "" && high == "") {
            if(isNullable)
                return true;
            return false;
        }

        // skipMode ON --> highLikelihood < 1.0
        if(skipMode === true) {
            if (low != "" && medium != "" && high != "" && (low > 0) && (low < medium) && (medium < high) && (high < 1)) {
                return true;
            }
        }
        // skipMode OFF --> highLikelihood === 1.0
        else if(skipMode === false) {
            if (low != "" && medium != "" && high != "" && (low > 0) && (low < medium) && (medium < high) && (high == 1)) {
                return true;
            }
        }
        // skipMode UNDEFINED --> highLikelihood <= 1.0
        else {
            if (low != "" && medium != "" && high != "" && (low > 0) && (low < medium) && (medium < high) && (high <= 1)) {
                return true;
            }
        }

    }
    return false;
}

function validateEmail(email)
{
    var re = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
    return re.test(email);
}

function updateTableIndex($table) {
    $table.find("tbody:first > tr").each(function(index) {
        var $indexCell = $(this).find("td:first");
        $indexCell.text(index + 1);
    });
}

function getCurrentTimeZone() {
    return moment.tz.guess();
}

if (!Array.prototype.find) {
    Object.defineProperty(Array.prototype, 'find', {
        value: function(predicate) {
            // 1. Let O be ? ToObject(this value).
            if (this == null) {
                throw new TypeError('"this" is null or not defined');
            }

            var o = Object(this);

            // 2. Let len be ? ToLength(? Get(O, "length")).
            var len = o.length >>> 0;

            // 3. If IsCallable(predicate) is false, throw a TypeError exception.
            if (typeof predicate !== 'function') {
                throw new TypeError('predicate must be a function');
            }

            // 4. If thisArg was supplied, let T be thisArg; else let T be undefined.
            var thisArg = arguments[1];

            // 5. Let k be 0.
            var k = 0;

            // 6. Repeat, while k < len
            while (k < len) {
                // a. Let Pk be ! ToString(k).
                // b. Let kValue be ? Get(O, Pk).
                // c. Let testResult be ToBoolean(? Call(predicate, T, « kValue, k, O »)).
                // d. If testResult is true, return kValue.
                var kValue = o[k];
                if (predicate.call(thisArg, kValue, k, o)) {
                    return kValue;
                }
                // e. Increase k by 1.
                k++;
            }

            // 7. Return undefined.
            return undefined;
        }
    });
}

function select2Focus() {
	$(this).closest('.select2').addClass("box-highlight");
}

function select2Blur() {
    $(this).closest('.select2').removeClass("box-highlight");
}

/**
 * Find target get Fabric Canvas
 * @param array
 * @param id
 * @returns {number}
 */

function findTargetCanvas(array,id) {
    var filtedArray = $.grep(array,function(n,i) {
       return n.id === id
    });

    return filtedArray.length > 0 ? filtedArray[0] : -1
}

function padOnChange(event, length, type) {
    var inputValue = $(event.target).val();
    if((inputValue.length < length) && !isNaN(Number(inputValue))) {
        if(type === "E" || type === "M" || type === "D" || type === "m" || type === "h" || type === "s" && (inputValue < 10)) {
            length = 1;
        } else if(type === "YY") {
            length = 2;
        }
        $(event.target).val(Number(inputValue).pad(length));
    }
}

function defaultTextBoxValue(event, defaultText, length) {
    var inputValue = $(event.target).val();
    if(inputValue === "" || inputValue === null || inputValue.length < length) {
        $(event.target).val(defaultText);
    }
}

/**
 * @content Find the object Data that has the given ID from an Array: objectsArray
 * @param {*} objectsArray the datasource
 * @param {*} id id of the object that needs to be found
 * @author Híu Híu 
 * @createdAt 2018/12/26 05:00PM
 */
function findObjectById(objectsArray, id) {
    var resultObject = null;

    resultObject = objectsArray.find(function(elem) {
        return Number(elem.item.id.replace("text-","")) === id
    });

    return resultObject;
}

/**
 * @content Remove abundant elements that has the same prop
 * @param {*} myArr 
 * @param {*} prop string name of the prop key to filter the array
 * @author Híu Híu 
 * @createdAt 2018/12/26 05:10PM
 */
function removeDuplicates(myArr, prop) {
    return myArr.filter(function (obj, pos, arr) {
        return arr.map(function(mapObj) {
            return mapObj[prop]
        }).indexOf(obj[prop]) === pos;
    });
}


function escapeRegExp(text) {
    return text.replace(/[-[\]{}()*+?.,\\/^$|#\s]/g, '\\$&');
}

/**
 * @param {*} text : text that needs to be normalized
 * @return normalized text
 * @author Quan Nguyen
 * @createdDate 2018-12-28 11:00
 * @content normalized text that contains special characters like japanese space
 */


/**
 * @return get search text and normalized text
 * @author Quan Nguyen
 * @createdDate 2018-12-28 11:00
 * @content get normalize Text
 */
function getSearchValue() {
    return normalize($('#search-text-box').val())
}

/**
 * @param {*} substring substring that has all the indexes needs to be found in string
 * @param {*} string 
 * @author Híu Híu 
 * @createdAt 2018/12/25
 * @content get the indexes of substring in string
 */
function getAllLocations(substring, string){
    var a=[],i=-1;
    while((i=string.indexOf(substring,i+1)) >= 0) a.push(i);
    return a;
}

function enableWizardStep() {
    var $disabledList = $(".bs-wizard-step.disabled")
    $disabledList.removeClass("disabled").addClass("inactive");
    $(".bs-wizard-step").each(function() {
        if($(this).find(".bs-wizard-dot").data("permission") !== "not-allow"){
            var href = $(this).find(".bs-wizard-dot").data("hashtag");
            $(this).find(".bs-wizard-dot").attr("href", href);
        }
    });
}

function is_object(mixed_var) {
    if (mixed_var instanceof Array) {
        return false;
    } else {
        return (mixed_var !== null) && (typeof( mixed_var ) == 'object');
    }
}


function objectToArray(obj) {
    var array = [], tempObject;
    for (var key in obj) {

        tempObject = obj[key];

        if (is_object(obj[key])) {
            tempObject = objectToArray(obj[key]);
        }
        array[key] = tempObject;
    }
    return array;
}
