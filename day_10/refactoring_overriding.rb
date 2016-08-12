class SuperSay
  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def say(text) ; end
end

class HtmlSay < SuperSay
  def say(text)
    prepare_text(text)
  end
  def prepare_text(text)
    "<p>#{text}</p>"
  end
end

class CssSay < SuperSay
  def say(text)
    super(text)
    text
  end
end


doc = HtmlSay.new('Hello')
style = CssSay.new('Hello')

#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"