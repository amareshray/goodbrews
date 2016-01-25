class Coffee < ActiveRecord::Base

  belongs_to :roaster

  has_many :coffee_drinkers
  has_many :users, :through => :coffee_drinkers


end
