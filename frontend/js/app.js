// TEST JS CONTENT EXAMPLE!!!
$(document).ready(function() {

    applyListener();
    thinkListener();
    evolveListener();
    donateListener();
    tweetListener();
    meetListener();
  });

  var root = 'https://make-the-space.herokuapp.com/';

  var meetListener = function() {
    $("div#meet").one("mouseover", function(e) {
      e.preventDefault();
      $.ajax({
        url: root + "connect",
        method: 'GET'
      })
      .done(function(response) {
        $("#event-title").html(`<a href=${response.URL}>${response.title}</a>`)
        $("#event-description").html(response.description)
        $("#event-address").html(response.localized_address_display)
      })
      .fail(function(response) {
        console.log(response)
      })
    })
  }

  var tweetListener = function () {
    $("div#tweet").one("mouseover", function(e) {
      e.preventDefault();
      $.ajax({
        url: root + "tweet",
        method: 'GET'
      })
      .done(function(response) {
        console.log(response)
        $("#tweet-description").html(response.tweet_content)
        $("#tweet-content").html(
            `<a href=${response.share_tweet} class="twitter-share-button" data-show-count="false">
            <img src="/MTS_Tweet_Button.png" height="40"></a>
            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>`)
      })
      .fail(function(response) {
        console.log(response)
      })
    })
  }

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
        $("#donate-link").html(`<a href=${response.URL}><img src="/MTS_Donate_Button.png" height="40"></a>`)
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

        $("#apply-name").html(`<a href=${response.URL}>${response.name}</a>`)
        $("p#apply-text").html(response.description)
      })
      .fail(function(response) {
        console.log("fail")
      })
    })
  }
