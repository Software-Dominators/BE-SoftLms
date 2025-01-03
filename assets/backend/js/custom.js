function initDataTable(tableIds, length) {
  for (i = 0; i < tableIds.length; i++) {
    $(tableIds[i]).DataTable({
      keys: !0,
      pageLength: length ? length : 25,
      language: {
        paginate: {
          previous: "<i class='mdi mdi-chevron-left'>",
          next: "<i class='mdi mdi-chevron-right'>",
        },
      },
      drawCallback: function () {
        $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
      },
    });
  }
}

$("#course-datatable").DataTable({
  keys: !0,
  language: {
    paginate: {
      previous: "<i class='mdi mdi-chevron-left'>",
      next: "<i class='mdi mdi-chevron-right'>",
    },
  },
  drawCallback: function () {
    $(".dataTables_paginate > .pagination").addClass("pagination-rounded");
  },
});

function initDateRangePicker(ids) {
  for (i = 0; i < ids.length; i++) {
    $(ids[i]).daterangepicker({
      locale: {
        format: "D/MM/Y",
      },
    });
  }
}

function initDatePicker(ids) {
  for (i = 0; i < ids.length; i++) {
    $(ids[i]).datepicker({
      locale: {
        format: "D/MM/Y",
      },
    });
  }
}

function initSelect2(ids) {
  for (i = 0; i < ids.length; i++) {
    $(ids[i]).select2();
  }
}

function initTimepicker() {
  var defaultOptions = {
    showSeconds: true,
    icons: {
      up: "mdi mdi-chevron-up",
      down: "mdi mdi-chevron-down",
    },
  };

  // time picker
  $('[data-toggle="timepicker"]').each(function (idx, obj) {
    var objOptions = $.extend({}, defaultOptions, $(obj).data());
    $(obj).timepicker(objOptions);
  });
}

function initSummerNote(ids) {
  for (i = 0; i < ids.length; i++) {
    !(function (o) {
      "use strict";
      var e = function () {
        this.$body = o("body");
      };
      (e.prototype.init = function () {
        o(ids[i]).summernote({
          placeholder: "",
          height: 170,
          callbacks: {
            onInit: function (e) {
              o(e.editor)
                .find(".custom-control-description")
                .addClass("custom-control-label")
                .parent()
                .removeAttr("for");
            },
          },
        });
      }),
        (o.Summernote = new e()),
        (o.Summernote.Constructor = e);
    })(window.jQuery),
      (function (o) {
        "use strict";
        o.Summernote.init();
      })(window.jQuery);
  }
}

function initImageUpload(box) {
  let uploadField = box.querySelector(".image-upload");

  uploadField.addEventListener("change", getFile);

  function getFile(e) {
    let file = e.currentTarget.files[0];
    checkType(file);
  }

  function previewImage(file) {
    let thumb = box.querySelector(".js--image-preview"),
      reader = new FileReader();
    reader.onload = function () {
      thumb.style.backgroundImage = "url(" + reader.result + ")";
    };
    reader.readAsDataURL(file);
    thumb.className += " js--no-default";
  }

  function checkType(file) {
    let imageType = /image.*/;
    if (!file.type.match(imageType)) {
      throw "Datei ist kein Bild";
    } else if (!file) {
      throw "Kein Bild gewählt";
    } else {
      previewImage(file);
    }
  }
}

// initialize box-scope
var boxes = document.querySelectorAll(".box");

for (let i = 0; i < boxes.length; i++) {
  let box = boxes[i];
  initDropEffect(box);
  initImageUpload(box);
}

/// drop-effect
function initDropEffect(box) {
  let area,
    drop,
    areaWidth,
    areaHeight,
    maxDistance,
    dropWidth,
    dropHeight,
    x,
    y;

  // get clickable area for drop effect
  area = box.querySelector(".js--image-preview");
  area.addEventListener("click", fireRipple);

  function fireRipple(e) {
    area = e.currentTarget;
    // create drop
    if (!drop) {
      drop = document.createElement("span");
      drop.className = "drop";
      this.appendChild(drop);
    }
    // reset animate class
    drop.className = "drop";

    // calculate dimensions of area (longest side)
    areaWidth = getComputedStyle(this, null).getPropertyValue("width");
    areaHeight = getComputedStyle(this, null).getPropertyValue("height");
    maxDistance = Math.max(parseInt(areaWidth, 10), parseInt(areaHeight, 10));

    // set drop dimensions to fill area
    drop.style.width = maxDistance + "px";
    drop.style.height = maxDistance + "px";

    // calculate dimensions of drop
    dropWidth = getComputedStyle(this, null).getPropertyValue("width");
    dropHeight = getComputedStyle(this, null).getPropertyValue("height");

    // calculate relative coordinates of click
    // logic click coordinates relative to page - parent's position relative to page - half of self height/width to make it controllable from the center
    x = e.pageX - this.offsetLeft - parseInt(dropWidth, 10) / 2;
    y = e.pageY - this.offsetTop - parseInt(dropHeight, 10) / 2 - 30;

    // position drop and animate
    drop.style.top = y + "px";
    drop.style.left = x + "px";
    drop.className += " animate";
    e.stopPropagation();
  }
}

function initImagePreviewer() {
  var boxes = document.querySelectorAll(".box");

  for (let i = 0; i < boxes.length; i++) {
    let box = boxes[i];
    initDropEffect(box);
    initImageUpload(box);
  }
}

// function checkRequiredFields() {
//   var pass = 1;
//   $("form.required-form")
//     .find("input, select")
//     .each(function () {
//       if ($(this).prop("required")) {
//         if ($(this).val() === "") {
//           pass = 0;
//         }
//       }
//     });

//   if (pass === 1) {
//     $("form.required-form").submit();
//   } else {
//     error_required_field();
//     console.log("work here");
//   }
// }

function checkRequiredFields() {
  // updated to add error highlightes
  var pass = 1;
  // Reset all labels to default style first
  $("form.required-form").find("label").css({
    color: "",
    "text-decoration": "",
  });

  // Check each required input and select
  $("form.required-form")
    .find("input, select")
    .each(function () {
      if ($(this).prop("required")) {
        // Get the label associated with this input
        var inputId = $(this).attr("id");
        var $label = $('label[for="' + inputId + '"]');

        if ($(this).val() === "") {
          pass = 0;
          // Add error styles to the label
          $label.css({
            color: "#dc3545", // Bootstrap danger color
            "text-decoration": "underline",
            "text-decoration-color": "#dc3545",
            "text-decoration-style": "solid",
          });

          // Add error styles to the input
          $(this).css({
            "border-color": "#dc3545",
          });

          // Add shake animation to the label
          $label.addClass("shake-animation");
          setTimeout(function () {
            $label.removeClass("shake-animation");
          }, 500);
        } else {
          // Reset styles if field is valid
          $label.css({
            color: "",
            "text-decoration": "",
          });
          $(this).css({
            "border-color": "",
          });
        }
      }
    });

  if (pass === 1) {
    $("form.required-form").submit();
  } else {
    error_required_field();
  }
}

function ellipsis(str, length, ending) {
  if (length == null) {
    length = 40;
  }
  if (ending == null) {
    ending = "...";
  }
  if (str.length > length) {
    return str.substring(0, length - ending.length) + ending;
  } else {
    return str;
  }
}

$(".server-side-select2").each(function () {
  var actionUrl = $(this).attr("action");
  $(this).select2({
    ajax: {
      url: actionUrl,
      dataType: "json",
      delay: 500,
      data: function (params) {
        return {
          searchVal: params.term, // search term
        };
      },
      processResults: function (response) {
        return {
          results: response,
        };
      },
    },
    placeholder: "Search",
    minimumInputLength: 1,
  });
});

// Scrollable tab
$(function () {
  $(".scrollable-tab-btn-left").on("click", function () {
    var currentLeftScrollVal = $(".scrollable-tab").scrollLeft();
    var tabWidth = $(".scrollable-tab ul.nav").width();

    //Button disabling
    // var totalLiItem = $('.scrollable-tab .nav .li').length;
    // var scrollPercentage = 100 * currentLeftScrollVal / ($('.scrollable-tab .nav').outerWidth() - ($('.scrollable-tab').outerWidth()+24));
    // if(scrollPercentage==0 || scrollPercentage < 3){
    // 	$('.scrollable-tab-btn-right').css('background-color', '#d6d6d6');
    // }else{
    // 	$('.scrollable-tab-btn-left').css('background-color', '#727ef5');
    // }
    //End Button disabling

    $(".scrollable-tab").animate(
      { scrollLeft: currentLeftScrollVal - 200 },
      400
    );

    // var indexOfCurrentActiveElem = $('.scrollable-tab .nav > li > a.active').parent().index();
    // $($('.scrollable-tab .nav > li').eq(indexOfCurrentActiveElem-1)).find('a').click();
  });

  $(".scrollable-tab-btn-right").on("click", function () {
    var currentLeftScrollVal = $(".scrollable-tab").scrollLeft();

    $(".scrollable-tab").animate(
      { scrollLeft: currentLeftScrollVal + 200 },
      400
    );

    // var indexOfCurrentActiveElem = $('.scrollable-tab .nav > li > a.active').parent().index();
    // $($('.scrollable-tab .nav > li').eq(indexOfCurrentActiveElem+1)).find('a').click();
  });
});
//End scrollable tab
