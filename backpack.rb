class Backpack
  def initialize(attributes)
    @attributes = attributes
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    pack_for_mild_weather

    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    else
    end
    # Ensure gym shoes are added on Mondays and Thursdays. Bring a packed lunch on all weekdays
    @items << 'gym shoes' if day_of_week == 'monday' || day_of_week == 'thursday'
    @items << 'packed lunch' if day_of_week != 'saturday' && day_of_week != 'sunday'
  end

  def pack_for_mild_weather
    @items << 'pants'
    @items << 'shirt'
  end

  def weather
    @attributes[:weather]
  end

  def day_of_week
    @attributes[:day_of_week]
  end
  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
