class CoffeeDrinker < ActiveRecord::Base
  belongs_to :coffee
  belongs_to :user
end
