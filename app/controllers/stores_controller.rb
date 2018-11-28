class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
