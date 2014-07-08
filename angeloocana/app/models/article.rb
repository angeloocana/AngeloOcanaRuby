class Article < ActiveRecord::Base
	has_many :article_labels, :dependent => :destroy

	validates :title, :presence => true
	validates :date_on_page, :presence => true
	validates :text_html, :presence => true
	validates :last_user_id, :presence => true

	scope :all_lazy, -> { select('*').order("created_at DESC") }
end
