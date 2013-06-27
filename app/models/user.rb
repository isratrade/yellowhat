class User < ActiveRecord::Base
  attr_accessible :avatar, :birthday, :description, :desk_number, :email, :first_name, :floor_level, :home_phone, :irc_name, :last_name, :mobile_phone, :title, :work_phone
end
