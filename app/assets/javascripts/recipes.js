$(function() {
  SetupUI();

});

function SetupUI() {
  $("#recipe_categories_tokens").tokenInput("/categories.json", {
    crossDomain: false,
    prePopulate: $("#recipe_categories_tokens").data("pre")
  });

  $(".removeIngredient").click(remove_fields);

  $("[type='checkbox']").hide();
  $("#recipe_picture").hide();

  $(".fileButton").click(function() {
    $("#recipe_picture").click();
  });

  $("#book_autocomplete").autocomplete({
    source: function (request, response) {
        $.ajax({
            url: "/books.json",
            dataType: "json",
            type: 'GET',
            global: false,
            contentType: "application/json; charset=utf-8",
            data: { term: request.term },
            success: function (data) {
              response(data);
            }
        });
    },
    search: function (event, ui) {
        $(this).removeClass("ui-state-error");
    },
    minLength: 3,
    select: function (event, ui) {
        $(this).val(ui.item.label);
        $("#book_autocomplete_id").val(ui.item.value);
        return false;
    }
  });
}

function remove_fields() {
  $(this).prev("input[type='hidden']").val("1");
  $(this).parent().hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $(link).parent().before(content.replace(regexp, new_id));
}