class ListsController < ApplicationController
  def index
    @lists = List.all
    render('lists/index.html.erb')
  end

  def show
    @lists = List.find(params[:id])
    render('lists/show.html.erb')
  end

  def new
    @lists = List.new
    render('lists/new.html.erb')
  end

  def create
    @lists = List.new(:item => params[:item],
      :location => params[:location],
      :when => params[:when])
    if @lists.save
    render('lists/success.html.erb')
    else
    render('lists/new.html.erb')
    end
  end

  def edit
    @lists = List.find(params[:id])
    render ('lists/edit.html.erb')
  end

  def update
    @lists = List.find(params[:id])
    if @lists.update(:item => params[:item],
          :location => params[:location],
          :when => params[:when])
      render('lists/success.html.erb')
    else
      render('lists/edit.html.erb')
    end
  end

  def destroy
    @lists = List.find(params[:id])
    @lists.destroy
    render('lists/destroy.html.erb')
  end
end
