class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare_to_leave_the_house
  end

  def items
    @items
  end

  def prepare_to_leave_the_house
    x = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    check_weather(x)
    check_day_of_the_week(day_of_week)

    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def check_weather(x)
    if x == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif x == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
    @items
  end

  def check_day_of_the_week(day_of_week)
    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Mondays and Thursdays. Wait a sec...
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def display_list_of_items_packed
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
