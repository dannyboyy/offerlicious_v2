class Questions::LikesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_question

	def create
		@question.likes.where(user_id: current_user.id).first_or_create

		respond_to do |format|
			format.html {redirect_to @question}
			format.js
		end
	end

	def destroy
		@question.likes.where(user_id: current_user.id).destroy_all

		respond_to do |format|
			format.html {redirect_to @question}
			format.js
		end
	end

	private

	def set_question
		@question = Question.friendly.find(params[:question_id])
	end
end