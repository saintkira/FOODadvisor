//function generate() {
//    var doc = new jsPDF('p', 'pt');
//
//    var elem = document.getElementById('table');
//    var imgElements = document.querySelectorAll('#table tbody img').cloneNode(false);
//
//    for (i = 0; i < imgElements.length; i++) {
//        imgElements[i].className = "";
//
//        var canvas = document.createElement('canvas');
//        canvas.width = imgElements[i].width;
//        canvas.height = imgElements[i].height;
//        var ctx = canvas.getContext('2d');
//        ctx.drawImage(imgElements[i], 0, 0);
//        var dataUrl = canvas.toDataURL();
//        
//    }
//var dataUrl = 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEASABIAAD/4gKgSUNDX1BST0ZJTEUAAQEAAAKQbGNtcwQwAABtbnRyUkdCIFhZWiAH3QAIAA4AFgAoAB1hY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtkZXNjAAABCAAAADhjcHJ0AAABQAAAAE53dHB0AAABkAAAABRjaGFkAAABpAAAACxyWFlaAAAB0AAAABRiWFlaAAAB5AAAABRnWFlaAAAB+AAAABRyVFJDAAACDAAAACBnVFJDAAACLAAAACBiVFJDAAACTAAAACBjaHJtAAACbAAAACRtbHVjAAAAAAAAAAEAAAAMZW5VUwAAABwAAAAcAHMAUgBHAEIAIABiAHUAaQBsAHQALQBpAG4AAG1sdWMAAAAAAAAAAQAAAAxlblVTAAAAMgAAABwATgBvACAAYwBvAHAAeQByAGkAZwBoAHQALAAgAHUAcwBlACAAZgByAGUAZQBsAHkAAAAAWFlaIAAAAAAAAPbWAAEAAAAA0y1zZjMyAAAAAAABDEoAAAXj///zKgAAB5sAAP2H///7ov///aMAAAPYAADAlFhZWiAAAAAAAABvlAAAOO4AAAOQWFlaIAAAAAAAACSdAAAPgwAAtr5YWVogAAAAAAAAYqUAALeQAAAY3nBhcmEAAAAAAAMAAAACZmYAAPKnAAANWQAAE9AAAApbcGFyYQAAAAAAAwAAAAJmZgAA8qcAAA1ZAAAT0AAACltwYXJhAAAAAAADAAAAAmZmAADypwAADVkAABPQAAAKW2Nocm0AAAAAAAMAAAAAo9cAAFR7AABMzQAAmZoAACZmAAAPXP/bAEMABQMEBAQDBQQEBAUFBQYHDAgHBwcHDwsLCQwRDxISEQ8RERMWHBcTFBoVEREYIRgaHR0fHx8TFyIkIh4kHB4fHv/bAEMBBQUFBwYHDggIDh4UERQeHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHv/AABEIABgAGAMBIgACEQEDEQH/xAAXAAEBAQEAAAAAAAAAAAAAAAAABwYI/8QAJxAAAQMEAQMDBQAAAAAAAAAAAQIDBAAFBhEhEiIxBxNBFjJRYXH/xAAZAQACAwEAAAAAAAAAAAAAAAAAAwEEBQb/xAAjEQABAwMDBQEAAAAAAAAAAAABAAIDBAUREjHBITJBUWHR/9oADAMBAAIRAxEAPwDbTM5x+0YE5lYlx7hEZ6W1JhyEOkvK8NbBICufn4BNS+7et31DZJlonW6Lbo01Pt+83KJcbTvfIOgeBo615qNYplFvhTDCessNmySnEiWw2pXU5pCkpWVkk7T1E8Ac7/NVbJIuGW7DlS4NsTCQ5BLSAqO2tEpSk9ijvvQrz3A62N6oqbjI7DCN1bp7fGdUgcOiy8eEJLYmwVbbcOkFKu0jyRz92tUpiubWGBbXrbd8MiSYpTpo2+c7HU0oAd/QSpClk8lSgfNKNZyoGMbKRpRw4jWlAbT+q6Q9EfTy85RhMJN7aadQ06JVvZkOnpcaI0UqPI6SeQn+71ulKWWhz2tPn8KZTjuPocrO5xYo87KH3I9si2dMhKBHaRFUlKhyknpA7TxsnQApSlZVRVyQENaustVvpauMulYMj6Rzhf/Z';
//
//    var data = doc.autoTableHtmlToJson(elem);
//    var images = [];
//    var i = 0;
//    doc.autoTable(data.columns, data.rows, {
////        bodyStyles: {rowHeight: 150},
//        drawCell: function(cell, opts) {
//            if (opts.column.dataKey !== 0) {
//                images.push({
//                    url: dataUrl,
//                    x: cell.textPos.x,
//                    y: cell.textPos.y
//                });
//                i++;
//            }
//        },
//        addPageContent: function() {
//            for (var i = 0; i < images.length; i++) {
//                doc.addImage(images[i].url, images[i].x, images[i].y, 20, 20);
//            }
//
//        }
//    });
//
//
//
////    var imgElements = "data:image/jpeg;base64,/9j/4AAQSkZ";
////    var images = [];
////    var i = 0;
////
////    doc.autoTable(res1.columns, res1.data, {
////        theme: 'plain',
////        startY: 30,
////        pageBreak: 'avoid',
////        styles: {
////            overflow: 'linebreak',
////            fontSize: 12,
////            rowHeight: 15,
////            fontStyle: 'bold',
////            columnWidth: 'wrap',
////            halign: 'center', // left, center, right
////            valign: 'middle' // top, middle, bott
////
////        },
////        columnStyles: {
////            1: {
////                columnWidth: 'auto'
////            }
////        },
////        didDrawCell: function(cell, opts)
////        {
////            if (opts.column.dataKey === 5)
////            {
////                images.push({
////                    url: imgElements[i].src,
////                    x: cell.textPos.x,
////                    y: cell.textPos.y
////                });
////                i++;
////            }
////        },
////        addPageContent: function() {
////            for (var i = 0; i < images.length; i++) {
////                doc.addImage(images[i].url, images[i].x, images[i].y, 200, 200);
////            }
////        }
//
//
//
//
////    });
//
//
//    doc.save("table.pdf");
//}


function downloadimage() {    
    $(document).ready(function() {
        var container = document.getElementById("capture"); //specific element on page
        html2canvas(container).then(function(canvas) {

            var link = document.createElement("a");
            document.body.appendChild(link);
            link.download = "html_image.jpg";
            link.href = canvas.toDataURL();
            link.target = '_blank';
            link.click();
        });
    });


}


//html2canvas($("#printform"), {
//        onrendered: function(canvas) {
//            var url = canvas.toDataURL();
//
//            var triggerDownload = $("<a>").attr("href", url).attr("download", getNowFormatDate() + "Menu.jpeg").appendTo("body");
//            triggerDownload[0].click();
//            triggerDownload.remove();
//        }
//    });
//
//$("#toPDF").on('click', function() {
//    html2canvas($("#tmenu"), {
//        onrendered: function(canvas) {
//            var url = canvas.toDataURL();
//
//            var triggerDownload = $("<a>").attr("href", url).attr("download", getNowFormatDate() + "menu.jpeg").appendTo("body");
//            triggerDownload[0].click();
//            triggerDownload.remove();
//        }
//    });
//});

