module SuperSay
  def say(text)
    text
  end
end

class HtmlSay
  include SuperSay
  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)
    "<p>#{text}</p>"
  end
end

class CssSay
  include SuperSay

  def prepare_text(text)
    do_something_with(text)
  end

  def do_something_with(text)
    text
  end
end

doc = HtmlSay.new
style = CssSay.new

#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"