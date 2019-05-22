require 'byebug'

class Array

  def my_uniq
    output = []
    self.each do |el|
      output << el if !output.include?(el)
    end
    output
  end

  def two_sum
    pairs = []
    (0...self.length).each_with_index do |el1,i|
      (0...self.length).each_with_index do |el2,j|
        if i < j
          if self[i] + self[j] == 0
            pairs << [i,j]
          end
        end
      end
    end

    pairs
    
  end

  def my_transpose
    self.transpose
  end

  def stock_picker
    # debugger
    pairs = Hash.new(0)
    (0...self.length).each_with_index do |el1 , i|
      (0...self.length).each_with_index do |el2 , j|
        # if i < j
          pairs[[i, j]] = el2 - el1
        # end
      end
    end

    pairs
    
  end

end

a = [1,3,5,6,7,2]
puts a.stock_picker

