// TEST JS CONTENT EXAMPLE!!!
$(document).ready(function() {

    applyListener();
    thinkListener();
    evolveListener();
    donateListener();
  });

  var root = 'https://make-the-space.herokuapp.com/';

  var donateListener = function () {
    $("div#donate").one("mouseover", function(e) {
      e.preventDefault();
      $.ajax({
        url: root + "donate",
        method: 'GET'
      })
      .done(function(response) {
        $("#donate-org-name").html(response.org_name)
        $("#donate-org-description").html(response.description)
        $("#donate-link").html(`<a href=${response.URL}>Click here to Donate!</a>`)
      })
    })
  }

  var evolveListener = function() {
    $("div#evolve").one("mouseover", function(e) {
      e.preventDefault();
      $.ajax({
        url: root + "evolve",
        method: 'GET'
      })
      .done(function(response) {
        $("#evolve-text").html(response.action)
      })
      .fail(function(response) {
        console.log(response)
      })
    })
  }

  var thinkListener = function() {
    $("div#think").one("mouseover", function(e) {
      e.preventDefault();

      $.ajax({
        url: root + "think",
        method: 'GET'
      })
      .done(function(response) {

        $("#think-content-title").html( `<a href=${response.URL}>${response.title}</a>` )
        $("#think-text-author").html(response.author)
        $("#think-source").html(response.source)
        console.log(response)
      })
      .fail(function(response) {
        console.log(response)
      })
    })
  }


  var applyListener = function() {
    $("div#apply").one("mouseover", function(e) {
      e.preventDefault();
      var applyContent = $(this);

      $.ajax({
        url: root + "apply",
        method: 'GET',
      })
      .done(function(response) {
        console.log("success")

        $("p#author").html(response.name)
        $("p#apply-text").html(response.description)
      })
      .fail(function(response) {
        console.log("fail")
      })
    })
  }
