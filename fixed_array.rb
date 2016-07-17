class FixedArray
  def initialize(size)
    @array = []
    size.times do
      @array << nil
    end
  end

  def get(index)
    if index >= @array.length
      raise OutOfBoundsException
    else
      return @array[index]
    end
  end
end
