class Thread1sController < ApplicationController
before_action :set_thread1, only: [:show, :edit, :destroy, :update]
  def index
    @thread1 = Thread1.all.recent
  end

  def show
    @comments = @thread1.comments
    @comment = Comment.new
  end

  def new
    @thread1 = Thread1.new
  end

  def create
    @thread1 = current_user.thread1s.new(thread1_params)
    if @thread1.save
      redirect_to @thread1, notice: "スレッド「#{@thread1.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @thread1.update(thread1_params)
    redirect_to thread1s_url, notice: "スレッド「#{@thread1.name}」を更新しました。"
  end

  def destroy
    @thread1.destroy
    redirect_to thread1s_url, notice: "スレッド「#{@thread1.name}」を削除しました。"
  end

  private

    def thread1_params
      params.require(:thread1).permit(:name, :description)
    end

    def set_thread1
      @thread1 = Thread1.find(params[:id])
    end
end
