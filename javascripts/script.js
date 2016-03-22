$( document ).ready(function() {
  $("[name='show-talks']").bootstrapSwitch();

  $("#show-talks").on('switchChange.bootstrapSwitch', function (e, data) {

        var $el = $(data.el)
          , value = data.value;
          console.log(data)
        if(data){//this is true if the switch is on
          console.log("show");
           $('.talks-in-schedule').show();
        }else{
          console.log("hide");
           $('.talks-in-schedule').hide();
        }
    });
});