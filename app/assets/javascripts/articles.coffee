# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'turbolinks:load', ->
  $ ->
    $("#cover-image").click ->
      $("#article_image").click()
      false

    $("#article_image").on 'change', (e) ->
      file = e.target.files[0]
      reader = new FileReader
      $preview = $('.article-image')
      t = this

      if file.type.indexOf('image') < 0
        return false

      reader.onload = do (file) ->
        (e) ->
          $preview.empty()
          $preview.attr("src",e.target.result)
          return
      reader.readAsDataURL file
      return
    return
return

