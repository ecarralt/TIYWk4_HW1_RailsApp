class PeopleController < ApplicationController


  def valid_people_names
    [
      'billy',
      'harry'
    ]
end

id = params[:id]
      @person_name = valid_people_names.find {|p| p == id}
      if @person_name.present?
        # we're good!
      else
        render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found
        
end


end
