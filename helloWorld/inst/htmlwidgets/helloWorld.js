HTMLWidgets.widget({

  name: 'helloWorld',
  type: 'output',

  factory: function(el, width, height) {
    console.log("helloWorld.js factory")
    return {
      renderValue: function(x) {
         console.log("helloWorld.js renderValue")
         el.innerText = x.message;
         },
      resize: function(width, height) {
      }

    };
  }
});
