class Greeter
  attr_accessor :dict

  def initialize(dict)
    @dict = dict
  end

  def greet(name, lang)
    dict[lang] ? "#{dict[lang]} #{name}" : "#{name}, I don't know what to say."
  end
end
