class Score < ActiveRecord::Base
	belongs_to :Inspection

	scope :videos, -> { where(type: 'Video') }
	scope :voids, -> { where(type: 'Void') }
	scope :no_sales, -> { where(type: 'NoSale') }

	def talk
		raise 'Abstract Method'
	end

  class << self
    def types
      %w(video no_sales void)
    end
  end
end

