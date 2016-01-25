class Coffee < ActiveRecord::Base

  belongs_to :roaster
  belongs_to :user



end
