class Main
  get "/" do
    @entries = Entry.all.sort_by{|e| -e.date}
    haml :index
  end
  get "/css/style.css" do
    content_type 'text/css', :charset => 'utf-8'
    sass :style
  end
end
