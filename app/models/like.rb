# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#
# Indexes
#
#  index_likes_on_slug  (slug) UNIQUE
#

class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :question

	# Required for friendly_id gem 
  extend FriendlyId
  friendly_id :question_id, use: :slugged
end
