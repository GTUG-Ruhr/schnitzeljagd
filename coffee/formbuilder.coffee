class Formbuilder
  constructor: (@fields) ->
  
  formelements =
    textfield:
      triggers: [
        'name'
        'email'
        'address'
        'zipcode'
        'place'
        'summary'
        'phone'
      ]
    textarea:
      triggers: [
        'description'
        'comment'
        'entry'
      ]
    dropdown:
      triggers: [
        'gender'
        'country'
      ]

  extract: () ->
    @words = @fields.split ", "

  build: () ->
    for word in @words
      for element in formelements
        element.triggers.some(word) -> element

