class Thread1sController < ApplicationController
  def index
    @thread1 = Thread1.all
  end

  def show
    @thread1 = Thread1.find(params[:id])
    @comments = @thread1.comments
    @comment = Comment.new
  end

  def new
    @thread1 = Thread1.new
  end

  def create
    @thread1 = Thread1.new(thread1_params)
    if @thread1.save
      redirect_to @thread1, notice: "スレッド「#(thread1.name)」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @thread1 = Thread1.find(params[:id])
  end

  def update
    thread1 = Thread1.find(params[:id])
    thread1.update(thread1_params)
    redirect_to thread1s_url, notice: "スレッド「#{thread1.name}」を更新しました。"
  end

  def destroy
    thread1 = Thread1.find(params[:id])
    thread1.destroy
    redirect_to thread1s_url, notice: "スレッド「#{thread1.name}」を削除しました。"
  end

  private

    def thread1_params
      params.require(:thread1).permit(:name, :description)
    end
end
