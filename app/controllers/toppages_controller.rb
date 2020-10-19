class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.tasks.build(task_params)  # form_with 用
      @task = current_user.tasks.order(id: :desc).page(params[:page])
    end
  end
end