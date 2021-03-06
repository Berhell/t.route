class Ticket < ActiveRecord::Base
	belongs_to :transport_way
	belongs_to :company
	belongs_to :to_city, :class_name => 'City', :foreign_key => 'to_city_id'
	belongs_to :from_city, :class_name => 'City', :foreign_key => 'from_city_id'

	validates :number, presence: true
	validates :number, :format => { :with => /\A[0-9]+\Z/i },
	:numericality => {:greater_than => 0}
	validates :date, presence: true
	validates :date, :format => { :with => /\A20(1[3-9]|[2-9][0-9])\-(0[1-9]|1[0-2])\-(0[1-9]|[1-2][0-9]|3[0-1])\Z/i }
	# validates :time, :format => { :with => /\A20(1[3-9]|[2-9][0-9])\-(0[1-9]|1[0-2])\-(0[1-9]|[1-2][0-9]|3[0-1]) (1[0-9]|2[0-4]):[0-5][0-9]:[0-5][0-9] \+[0-9]*\Z/i }
	validates :company_id, presence: true
	validates :transport_way_id, presence: true

end
