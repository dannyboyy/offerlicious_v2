# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  pro_tip_url :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  slug        :string
#
# Indexes
#
#  index_questions_on_slug     (slug) UNIQUE
#  index_questions_on_user_id  (user_id)
#

class Question < ActiveRecord::Base
	belongs_to :user
	has_many :likes

	# Required for friendly_id gem 
  extend FriendlyId
  friendly_id :title, use: :slugged

  default_scope { order('created_at DESC') }
end
