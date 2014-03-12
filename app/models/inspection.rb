class Inspection < ActiveRecord::Base
	has_many :scores
	delegate :videos, :voids, :no_sales, to: :scores
end
