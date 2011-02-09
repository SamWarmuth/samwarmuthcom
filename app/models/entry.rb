class Entry < CouchRest::ExtendedDocument
  use_database COUCHDB_SERVER
  
  property :name
  property :date, :default => Proc.new{Time.now.to_i}
  property :image_url
  
  property :description
  
  property :website
  property :github
  
  def thumb
    "url(/images/#{self.image_url}-thumb.png)"
  end
  def image
    "url(/images/#{self.image_url}.png)"
  end
  
end
