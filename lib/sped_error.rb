class SpedError < RuntimeError
  attr_accessor :line, :lineno

  def initialize(msg, line, lineno = nil)
    super msg
    @line = line
    @lineno = lineno
  end
end
