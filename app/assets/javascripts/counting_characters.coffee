# app/assets/javascripts/counting_chracters.coffee
@postCreate = (value) ->
  url = '#{counting_characters_url}'
  data = { form: { input: value } }
  $.post(url, data)
