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
    # set up local variables used by rest of prepare method
    x = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    # Ensure appropriate clothing is added to backpack
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

    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Mondays and Thursdays. Wait a sec...
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end

    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      # Used to bring snacks on weekend trips, but now I just buy 'em
      @items << 'snacks'
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
