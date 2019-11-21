class FeedbacksController < ApplicationController
  def create
    if current_mentor
      @student = User.where(mentor_id: current_mentor.id)
    end
  end

  def new
    # add bool to feedback to discern between admin level feedback and student feedback
    if current_mentor
      Feedback.create(note: params[:note], date: params[:date], user_id: params[:student], mentor_id: current_mentor.id)
      # Feedback.create(note: params[:note], date: params[:date], user_id: params[:student], mentor_id: current_mentor.id, admin: true)
    end
    if current_user
      Feedback.create(note: params[:note], date: params[:date], user_id: current_user.id, mentor_id: current_user.mentor_id)
      # Feedback.create(note: params[:note], date: params[:date], user_id: current_user.id, mentor_id: current_user.mentor_id, admin:false)
    end
    return redirect_to "/"
  end

  def index
    if current_user
      @feedbacks = Feedback.where(user_id: current_user.id)
    end
    if current_mentor
      @feedbacks = Feedback.where(mentor_id: current_mentor.id)
    end
  end
end
