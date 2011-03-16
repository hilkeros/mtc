atom_feed do |feed|
  feed.title("MTC gigs")
  feed.updated(@gigs.first.dateTime)
 
  @gigs.each do |gig|
    feed.entry(gig.name, :url => gig.url) do |entry|
      entry.title(gig.date)
      entry.content(gig.info)
    end
  end
end