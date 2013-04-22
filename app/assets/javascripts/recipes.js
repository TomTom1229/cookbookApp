$(function() {
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
  
});

function remove_fields() {
  $(this).prev("input[type='hidden']").val("1");
  $(this).parent().hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $(link).parent().before(content.replace(regexp, new_id));
}