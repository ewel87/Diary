class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @websites = [
      ["http://railsgirls.com", "Rails Girls"],
      ["https://en.wikibooks.org/wiki/Ruby_Programming", "Wikibooks"],
      ["http://guides.rubyonrails.org", "Ruby on Rails Guides"],
    ]
    render 'entries/index'


  end
    def show
      binding.pry
    @entry = Entry.find(params["id"])
  render 'entries/show'
  end
end
