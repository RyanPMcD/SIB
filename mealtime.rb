class Mealtime
  def self.what_to_eat?
    time = Time.now
    if time.hour >= 6 && time.hour <= 9
      'breakfast'
    elsif time.hour >= 11 && time.hour <= 13
      'lunch'
    elsif time.hour >= 16 && time.hour <= 19
      'dinner'
    else
      'snack'
    end
  end
end
