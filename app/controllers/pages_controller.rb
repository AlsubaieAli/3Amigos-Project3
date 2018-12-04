class PagesController < ApplicationController
  def home
    @stores = Store.all
  end

  def search
    @stores = Store.all
    term = params[:term]
    results = []
    @stores.each do |store|
      if store.name.downcase.include?(term.downcase)
        results.push(store)
      end
    end
    render json: results
  end
end
