class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(arguments = {})
    # (address, square_feet, num_bedrooms = 3, num_baths = 2, cost = 320_000, down_payment = 0.20, sold = false, has_tenants = false)
    @address = arguments[:address]
    @square_feet = arguments[:square_feet]
    @num_bedrooms = arguments[:num_bedrooms] || 3
    @num_baths = arguments[:num_baths] || 2
    @cost = arguments[:cost] || 320_000
    @down_payment = arguments[:down_payment] || 0
    @sold = arguments[:sold] || false
    @has_tenants = arguments[:has_tenants] || false
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit) #good_credit => true or false
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    @cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end

class Car
  attr_reader :headlights, :gear

  def start_car(**options)
    @headlights = options.fetch(:headlights) {true}
    @gear = options[:gear] || 1
  end
end

herbie = Car.new

herbie.start_car
herbie.headlights

herbie.start_car(headlights: false)
herbie.headlights

herbie.start_car(gear: 2)
herbie.gear
