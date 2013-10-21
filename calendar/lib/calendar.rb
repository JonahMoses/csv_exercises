require 'csv'
require './lib/birthday'

class Calendar

attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

 def birthday
    @birthday ||= build_birthdays
end

private

  def build_birthdays
    data.collect do |row|
      Birthday.new(row)
    end
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end

end
