require 'csv'
require './lib/grade'

class ReportCard
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def grades
    @grades ||= build_grades
  end

private

  def build_grades
    data.collect do |row|
      Grade.new(row)
    end
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end

end
