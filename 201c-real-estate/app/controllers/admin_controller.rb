class AdminController < ApplicationController
 
  before_filter except: ["login", "login_post", "logout"] do 
    if session[:id] == nil
      flash[:error] = "You must be logged in to access that page."
      redirect_to "/admin/login" and return
    end
  end
  
  def index
    @houses = House.order(:id)
    render :index and return
  end

  def index_post
    House.all.each do |house|
      if params[:commit] == "Delete house #{house.id}"
        house.destroy
      end
    end
    redirect_to "/admin/houses" and return
  end

  def login
    render :login and return
  end
  
  def login_post
    if params[:username] == ""
      flash[:error] = "Username cannot be blank"
      redirect_to "/admin/login" and return
    end
    
    admin = Admin.where(username: params[:username]).first

    if admin == nil
      flash[:error] = "Unknown username"
      redirect_to "/admin/login" and return
    end
    if admin.username != params[:username]
      flash[:error] = "Wrong username"
      redirect_to "/admin/login" and return
    end

    if Admin.find(admin.id).authenticate(params[:password]) == false
      flash[:error] = "Wrong password"
      redirect_to "/admin/login" and return
    else
      session[:id] = admin.id
      redirect_to "/admin/houses" and return
    end
  end
  
  def logout
    session.clear
    redirect_to "/admin/login" and return
  end
  
  def edit
    @house = House.where(id: params[:id]).first
    render :edit and return
  end

  def edit_post
    @house                 = House.where(id: params[:id]).first
    @house.address         = params[:address]
    @house.city            = params[:city]
    @house.state           = params[:state]
    @house.price           = params[:price]
    @house.num_bedrooms    = params[:num_bedrooms]
    @house.num_stories     = params[:num_stories]
    @house.num_square_feet = params[:num_square_feet]
    @house.image_url       = params[:image_url]

    if @house.save
      redirect_to "/admin/houses" and return
    else
      render :edit and return
    end
  end

  def new
    @house = House.new
    render :new and return
  end

  def new_post
    @house                 = House.new
    @house.address         = params[:address]
    @house.city            = params[:city]
    @house.state           = params[:state]
    @house.price           = params[:price]
    @house.num_bedrooms    = params[:num_bedrooms]
    @house.num_stories     = params[:num_stories]
    @house.num_square_feet = params[:num_square_feet]
    @house.image_url       = params[:image_url]

    if @house.save
      redirect_to "/admin/houses" and return
    else
      render :new and return
    end
  end

end
