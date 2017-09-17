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
    @entry = Entry.find(params["id"])
  render 'entries/show'
  end

   def create
    # entry_params = params["entry"]
    # entry = Entry.create(entry_params)
    #
    # render(:plain => params['entry']['title'].inspect)
    entry = Entry.create(title: params['entry']['title'],date: Date.current, dontents: params['entry']['dontents'])
    redirect_to(entry_path(entry))

  end

  def edit
    @entry = Entry.find(params["id"])
    render 'entries/edit'

  end

  def update
    entry_params = params["entry"].permit("title", "dontents")
    entry = Entry.find(params["id"])
    entry.update(entry_params)
    redirect_to(entry_path(entry))
  end

end
