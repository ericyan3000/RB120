class Banner
  def initialize(message,width=message.length + 2)
    @message = message
    @width = width
    self.messageLength = message.length
    width_too_narrow if isTooNarrow?
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  attr_accessor :messageLength, :width

  def horizontal_rule
    "+#{"-" * width}+"
  end

  def empty_line
    "|#{" " * width}|"
  end

  def message_line
    space_tab = (width - messageLength) / 2 - 1 
    "| #{" " * space_tab}#{@message}#{" " * space_tab} |"
  end

  def isTooNarrow?
    width < messageLength
  end 

  def width_too_narrow
    puts "Required width #{width} is too narrow, setting to minimum width."
    self.width = messageLength + 2
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner