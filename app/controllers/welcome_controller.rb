class WelcomeController < ApplicationController

  def home

  end

  def detail
    # id = params[:id]
    @person_name = params[:id]
      # @person_name = valid_people_names.find {|p| p == id}
      # if @person_name.present?
      #   # we're good!
      # else
      #   render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found
      # end
  end

  def lorem
    # @lorem_type = params[:type]
    @lorem_text = set_lorem(params[:type])

  end

  private
  # def valid_people_names
  #   [
  #     'billy',
  #     'harry',
  #     'lorem'
  #   ]
  # end
  def set_lorem (type_req)
    lorem_cat = " this is lorem cat"
    lorem_standard = "this is lorem standard"

    case type_req
    when "cat"
      return lorem_cat
    else
      return lorem_standard
    end

  end


end
