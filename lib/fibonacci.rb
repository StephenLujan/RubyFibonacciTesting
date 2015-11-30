class Fibbonacci
  attr_accessor :first_number
  attr_accessor :second_number

  def initialize(first_number=1, second_number=1)
    @first_number = first_number
    @second_number = second_number
  end

  def fibonacci_sequence(length)
    array = [@first_number, @second_number]
    while array.length < length
      array << array[-1] + array[-2]
    end
    array
  end
end