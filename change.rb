require 'rspec'

class Coin
  def change(number)
    returned_change = []
    temp_number = number
    allowed_coins = [25, 10, 5, 1]
    allowed_coins.each do |coin|
      while temp_number >= coin
        returned_change << coin
        temp_number -= coin
      end
    end
    returned_change
  end
end

RSpec.describe Coin do
  describe '#change' do
    it 'it should return 25 if input is greater than or equal to 25' do
      coins = Coin.new
      result = coins.change(45)
      expect(result[0]).to eq(25)
    end
    it 'it should return [25, 25] if input is 50' do
      coins = Coin.new
      result = coins.change(50)
      expect(result).to eq([25, 25])
    end
    it 'it should return [25, 10] if input is 35' do
      coins = Coin.new
      result = coins.change(35)
      expect(result).to eq([25, 10])
    end
    it 'it should return [25, 10, 5] if input is 40' do
      coins = Coin.new
      result = coins.change(40)
      expect(result).to eq([25, 10, 5])
    end
    it 'it should return [25, 10, 5, 1] if input is 41' do
      coins = Coin.new
      result = coins.change(41)
      expect(result).to eq([25, 10, 5, 1])
    end
    it 'it should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if input is 119' do
      coins = Coin.new
      result = coins.change(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
    # ************************
    # while temp_number >= 25
    #   returned_change << 25
    #   temp_number -= 25
    # end
    # while temp_number >= 10
    #   returned_change << 10
    #   temp_number -= 10
    # end
    # while temp_number >= 5
    #   returned_change << 5
    #   temp_number -= 5
    # end
    # while temp_number >= 1
    #   returned_change << 1
    #   temp_number -= 1
    # end
