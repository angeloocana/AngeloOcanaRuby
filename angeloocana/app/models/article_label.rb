class ArticleLabel < ActiveRecord::Base
	belongs_to :article
	belongs_to :label

	validates :article_id, :presence => true
	validates :label_id, :presence => true
end
