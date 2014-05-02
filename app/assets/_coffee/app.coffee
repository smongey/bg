if $('#home').length > 0
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
  $(window).on "scroll", ->
    duh = $("#about").position().top
    $(".thumbs li:nth-child(2)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 9) + "px)"
    $(".thumbs li:nth-child(3)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 10) + "px)"
    $(".thumbs li:nth-child(4)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 20) + "px)"
    $(".thumbs li:nth-child(5)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 7) + "px)"
    $(".thumbs li:nth-child(6)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 12) + "px)"
    $(".thumbs li:nth-child(7)").css "-webkit-transform", "translateY( -" + Math.floor($(window).scrollTop() / 20) + "px)"
    return

$(document).ready ->
	$(".menu-link").bigSlide()
	$(".menu-link").on "click", ->
		if $(".panel").position().left < 0
			$(this).addClass "on"
		else
			$(this).removeClass "on"
		return
	return


$(window).on "scroll resize", ->
  logoDistanceFromBottom = Math.floor($(window).height() - ($('.logo').height() + $('.logo').position().top))
  logoHeight = $('.logo').height()
  logoHeightAndDistance = logoDistanceFromBottom + logoHeight

  if ($(window).scrollTop() + $(window).height()) > ($(document).height() - (logoHeight - 200))
      $('.logo, li.top').addClass('active');
  else 
      $('.logo, li.top').removeClass('active');
  return

$('a[href="#about"]').on "click", (e) ->
  e.preventDefault()
  bottomSlide = eval($(window).height())
  $("html, body").animate
    scrollTop: $(document).height() - bottomSlide + "px"
  , 800, "easeOutQuint"

$('li.top').on "click", (e) ->
  e.preventDefault()
  $("html, body").animate
    scrollTop: "0px"
  , 800, "easeOutQuint"

$('#info').on "click", (e) ->
  e.preventDefault();
  if !$('.bottom ul').hasClass('active')
    $('.bottom ul').addClass('active');
  else
    $('.bottom ul').removeClass('active');










