$ ->
  textareaCountMax = 140
  $(".micropost_count").bind "keydown keyup keypress change", ->
    thisValueLength = $(this).val().length
    countDown = (textareaCountMax) - (thisValueLength)
    $(".count_textarea").html countDown
    if countDown < 0
      $(".count_textarea").css
        color: "#ff0000"
        fontWeight: "bold"

      $(".micropost_count").css background: "#ffcccc"
    else
      $(".count_textarea").css
        color: "#000000"
        fontWeight: "normal"

      $(".micropost_count").css background: "#ffffff"

  $(window).load ->
    $(".count_textarea").html textareaCountMax

