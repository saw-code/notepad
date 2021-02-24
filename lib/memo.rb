
class Memo < Post

  def read_from_console
    puts "Новая заметка (все, что пишете до строчки \"end\" ):"

    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}"
    # unshift добавляет текст вначало массива
    return @text.unshift(time_string)
  end
end
