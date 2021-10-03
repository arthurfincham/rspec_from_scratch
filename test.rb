class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    @value == comparison.value ? 'Test passes! :)' : 'Test fails! D:'
  end
end

class Equal
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end