class GigsController < ApplicationController
  skip_before_filter :authenticate
  skip_before_filter :authorize
  
  def index
    @gigs ||= Gig.find_by_sql("SELECT *  FROM tourManager left join artist on artistId=artist.id where public=1 AND dateTime>'#{Date.current.to_s("%Y-%m-%d")}' ORDER BY dateTime ASC")
    respond_to do |format|
      format.atom
    end
  end
  
end
