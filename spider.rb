require './practice'

class Spider < Animal
  def initialize(web_strength_level, name = 'Unknown')
    super('spider', 8, name)
    @web_strength_level = web_strength_level
  end

  def speak
    '...'
  end

  def make_a_web
    'www'
  end
end
