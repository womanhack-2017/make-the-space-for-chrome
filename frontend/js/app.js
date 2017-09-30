// TEST JS CONTENT EXAMPLE!!!
$(document).ready(function() {

    applyListener();
  });

  var root = 'https://make-the-space.herokuapp.com/';

  var applyListener = function() {
    $("div#apply").on("click", function(e) {
      e.preventDefault();
      var applyContent = $(this);

      $.ajax({
        url: root + "apply",
        method: 'GET',
      })
      .done(function(response) {
        console.log("success")
        $("p#applytext").html(response.description)
      })
      .fail(function(response) {
        console.log("fail")
      })
    })
  }
