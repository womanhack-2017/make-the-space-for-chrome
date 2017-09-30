// TEST JS CONTENT EXAMPLE!!!
$(document).ready(function() {

    var root = 'https://make-the-space.herokuapp.com';

    $.ajax({
      url: root ,
      method: 'GET',
    })
      .done(function(response) {
        console.log("success")
        console.log(response)
        $(".main").append(response.tweet_content)
      })
      .fail(function(response) {
        console.log("********");
        console.log(response);
      });
  });
