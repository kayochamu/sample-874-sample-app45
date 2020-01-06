class TasksController < ApplicationController
 
before_action :set_user,only:[:new,:index,]
before_action :set_task,only:[:show,:edit,:uptate,:destroy]
before_action :logged_in_user,only:[:new,:show,:edit,:index]
before_action :correct_user,only:[:new,:index,:create,:updete,:destroy,:show,]

def new 
  @user = User.find(params[:user_id])
  @task = Task.new
end  

def
  set_user
   @cuuser = User.find(params[:user_id])
   @task = Task.new
end

def
  correct_user
   @cuuser = User.find(params[:user_id])
   @task = Task.new
end



    

 def index
   @user = User.find(params[:user_id])
   @tasks = Task.all
   @tasks = @user.tasks
 end  
end
  
  def show
    @user = User.find(params[:user_id])
  end
  
  
  def delete
    @user = User.find(params[:user_id])
  end

def create
    @task = Task.new(user_id: @current_user.id,task_name: task_params[:task_name],contents: task_params[:contents])
  if task.save
      flash[:success]="新規作成に成功しました"
      redirect_to task_index_url(@task)
  else
      render :new
  end
end
   
  
   def
   logged_in_user
    unless logged_in? || host_logged_in? 
      store_location
      flash[:danger]= "ログインしてください"
      redirect_to login_url
    end
   end
 
