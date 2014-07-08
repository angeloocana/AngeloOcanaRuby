class Label < ActiveRecord::Base
	has_many :article_labels, :dependent => :destroy

	validates :name, :presence => true

	scope :all_lazy, -> { select('*').order("name ASC") }
end
