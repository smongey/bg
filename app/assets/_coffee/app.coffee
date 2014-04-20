counter = document.getElementById("counter").getElementsByTagName("li")

slider = Swipe(document.getElementById("slider"),
  speed: 400,
  auto: 5000,
  continuous: true,
  callback: (pos) ->
    i = counter.length
    counter[i].className = " "  while i--
    counter[pos].className = "on"
    return
)

$(document).ready ->
	$(".menu-link").bigSlide()
	$(".menu-link").on "click", ->
		if $(".panel").position().left < 0
			$(this).addClass "on"
		else
			$(this).removeClass "on"
		return
	return


$(window).on "scroll", ->
  $(".thumbs li:nth-child(2)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 20) + "px)"
  $(".thumbs li:nth-child(3)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 10) + "px)"
  $(".thumbs li:nth-child(4)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 20) + "px)"
  $(".thumbs li:nth-child(5)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 7) + "px)"
  $(".thumbs li:nth-child(6)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 12) + "px)"
  $(".thumbs li:nth-child(7)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 20) + "px)"
  return