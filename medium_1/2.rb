class TextAnalyzer
  def process
    yield(File.read("sample.txt"))
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").size} paragraphs" }
analyzer.process { |text| puts "#{text.count("\n") + 1} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }