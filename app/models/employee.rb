class Employee < ApplicationRecord
	 has_many :absents, :class_name => "Leave::Absent"
end
