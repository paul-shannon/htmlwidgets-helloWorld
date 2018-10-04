HTMLWidgets.widget({

  name: 'helloWorld',
  type: 'output',

  factory: function(el, width, height) {
    console.log("helloWorld.js factory")
    return {
      renderValue: function(x) {
          console.log("helloWorld.js renderValue")
          el.innerText = x.message;
          styling = {'background-color': '#E8E8E8',
                     'border': '1px gray solid',
                     'border-radius': '10px',
                     'padding': '10px'};
          $("#helloWorld").css(styling);   // for shiny
          $(".helloWorld").css(styling);   // for plain R, RStudio, Rmarkdown
          },
      resize: function(width, height) {
      }

    };
  }
});
