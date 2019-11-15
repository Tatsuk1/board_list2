class Thread1sController < ApplicationController
  def index
    @thread1 = Thread1.all
  end

  def show
  end

  def new
    @thread1 = Thread1.new
  end

  def create
    thread1 = Thread1.new(thread1_params)
    thread1.save!
    redirect_to thread1s_url, notice: "スレッド「#(thread1.name)」を登録しました。"
  end

  def edit
  end

  private

    def thread1_params
      params.require(:thread1).permit(:name, :description)
    end
end
