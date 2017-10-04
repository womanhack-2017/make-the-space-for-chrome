// TEST JS CONTENT EXAMPLE!!!

$(document).ready(function() {

    applyListener();
    thinkListener();
    evolveListener();
    donateListener();
    tweetListener();
    meetListener();

    colorSwitcher();

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
        $("#tweet-content").html(`<a href=${response.share_tweet} class="twitter-share-button"data-show-count="false">  Tweet Now</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>`)
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
        //console.log("fail")
      })
    })
  }

  var colorSwitcher = function(){
    var ids = ["meet", "tweet", "donate", "evolve", "think", "apply"]
    ids.forEach(function(id){
      $(`#${id}`).attr("style", `background-color: ${determineColors(currentColors)}`)
    })

  }
var paletteArray = [{"#33658A": 0, "#758E4F": 0, "#F6AE2D": 0, "#F26419": 0},
        {"#61E786": 0, "#5A5766": 0, "#48435C": 0, "#9792E3": 0},
        {"#2E3532": 0, "#8B2635": 0, "#D2D4C8": 0, "#D3EFBD": 0},
        {"#C2E1C2": 0, "#7DCD85": 0, "#80AB82": 0, "#778472": 0},
        {"#49C6E5": 0, "#54DEFD": 0, "#00BD9D": 0, "#8BD7D2": 0},
        {"#C4D6B0": 0, "#477998": 0, "#291F1E": 0, "#A3333D": 0},
        {"#C2F9BB": 0, "#9AD1D4": 0, "#62C370": 0, "#CC3363": 0},
        {"#F7AEF8": 0, "#B388EB": 0, "#8093F1": 0, "#72DDF7": 0},
        {"#63A088": 0, "#56638A": 0, "#483A58": 0, "#56203D": 0},
        {"#3E000C": 0, "#FB4B4E": 0, "#FFCBDD": 0, "#7C0B2B": 0},
        {"#4C2A85": 0, "#6B7FD7": 0, "#BCEDF6": 0, "#DDFBD2": 0},
        {"#ADFCF9": 0, "#89A894": 0, "#4B644A": 0, "#49393B": 0},
        {"#ECA400": 0, "#006992": 0, "#27476E": 0, "#001D4A": 0},
        {"#B0B5B3": 0, "#EF27A6": 0, "#706F6F": 0, "#FF299C": 0},
        {"#B9D8C2": 0, "#8AA1B1": 0, "#4A5043": 0, "#FFCB47": 0},
        {"#35605A": 0, "#6B818C": 0, "#D8E4FF": 0, "#31E981": 0},
        {"#C6C7C4": 0, "#A2999E": 0, "#846A6A": 0, "#353B3C": 0},
        {"#E01A4F": 0, "#F15946": 0, "#F9C22E": 0, "#53B3CB": 0},
        {"#28262C": 0, "#998FC7": 0, "#D4C2FC": 0, "#14248A": 0},
        {"#00A878": 0, "#D8F1A0": 0, "#F3C178": 0, "#FE5E41": 0},
        {"#4A6C6F": 0, "#846075": 0, "#AF5D63": 0, "#ED474A": 0},
        {"#fdc010": 0, "#8bc34a": 0, "#43a047": 0, "#009688": 0, "#09bcd3": 0},
        {"#f06291": 0, "#e71f63": 0, "#ef4437": 0, "#f0592b": 0, "#f8971c": 0},
        {"#0d0000": 0, "#780000": 0, "#d60000": 0, "#a38b27": 0, "#e1c44d": 0},
        {"#8f3e97": 0, "#65499d": 0, "#4554a4": 0, "#2083c5": 0, "#35a4dc": 0},
        {"#a32020": 0, "#670067": 0, "#eb8c00": 0, "#004c7d": 0, "#2a6546": 0},
        {"#eadbcb": 0, "#e1b4ac": 0, "#633a43": 0, "#849875": 0, "#37394f": 0},
        {"#ed4c44": 0, "#ef8e30": 0, "#a95e34": 0, "#e30b5c": 0, "#fd5b78": 0},
        {"#d62a2a": 0, "#ffd776": 0, "#ffa700": 0, "#7a1c1c": 0, "#b28f59": 0},
        {"#98a148": 0, "#eb5e66": 0, "#ebebeb": 0, "#eaeaae": 0, "#ee8262": 0},
        {"#f74902": 0, "#62bd19": 0, "#00b5d6": 0, "#ffbf0d": 0, "#60605b": 0},
        {"#c4e19d": 0, "#517a00": 0, "#ff8932": 0, "#ff6c00": 0, "#000000": 0},
        {"#9e1b1b": 0, "#e5a339": 0, "#1c5125": 0, "#71a559": 0, "#ba711f": 0},
        {"#8f8271": 0, "#b7ab9d": 0, "#eb682d": 0, "#d54e12": 0, "#645f50": 0},
        {"#3e3935": 0, "#914d72": 0, "#c44441": 0, "#909b4f": 0, "#df8d41": 0},
        {"#f3bed2": 0, "#e57699": 0, "#eb8639": 0, "#acb949": 0, "#e1ddda": 0},
        {"#e52d00": 0, "#ffc90d": 0, "#fead32": 0, "#98cb00": 0, "#0265ff": 0},
        {"#fbb26d": 0, "#f57d62": 0, " #e15b64": 0, "#abbd83": 0, "#849b87": 0},
        {"#f39844": 0, "#ba2727": 0, "#f690ae ": 0, "#e95d7f": 0, "#62b9cb": 0},
        {"#c5e9b4": 0, "#9ae0ff": 0, "#26a9a9": 0, "#2ad4bd": 0, "#bbe7e3": 0},
        {"#d4c1a8": 0, "#a6c2ad ": 0, "#d3a244": 0, "#1d405b": 0, "#a32209": 0},
        {"#98ada7": 0, "#a9beae": 0, "#e9cdc8": 0, "#85243c": 0, "#3c5745": 0}];

        Array.prototype.random = function(){
          return this[Math.floor((Math.random()*this.length))];
        }

        var currentColors = paletteArray.random()


        // this returns an array of colors with a distinct value
        var valueChecker = function(colors,value){
          var results =[];
          for (var color in colors){
            if (colors[color]===value){
              results.push(color);
            }
          }
          return results
        }

        var determineColors = function(colors){
          var colorsAtZero = valueChecker(colors,0);
          var colorsAtOne = valueChecker(colors,1);

          if (colorsAtZero.length !== 0){
            var color = colorsAtZero.random()
            currentColors[color] += 1;
            return color 
          }
          else if (colorsAtOne.length !== 0){
            var color = colorsAtOne.random()
            currentColors[color] += 1;
            return color
          }
        }