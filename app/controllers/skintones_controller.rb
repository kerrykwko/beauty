class SkintonesController < ApplicationController
  def index
    @skintones = Skintone.all

    render("skintones/index.html.erb")
  end

  def show
    @skintone = Skintone.find(params[:id])

    render("skintones/show.html.erb")
  end

  def new
    @skintone = Skintone.new

    render("skintones/new.html.erb")
  end

  def create
    @skintone = Skintone.new

    @skintone.color = params[:color]

    save_status = @skintone.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/skintones/new", "/create_skintone"
        redirect_to("/skintones")
      else
        redirect_back(:fallback_location => "/", :notice => "Skintone created successfully.")
      end
    else
      render("skintones/new.html.erb")
    end
  end

  def edit
    @skintone = Skintone.find(params[:id])

    render("skintones/edit.html.erb")
  end

  def update
    @skintone = Skintone.find(params[:id])

    @skintone.color = params[:color]

    save_status = @skintone.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/skintones/#{@skintone.id}/edit", "/update_skintone"
        redirect_to("/skintones/#{@skintone.id}", :notice => "Skintone updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Skintone updated successfully.")
      end
    else
      render("skintones/edit.html.erb")
    end
  end

  def destroy
    @skintone = Skintone.find(params[:id])

    @skintone.destroy

    if URI(request.referer).path == "/skintones/#{@skintone.id}"
      redirect_to("/", :notice => "Skintone deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Skintone deleted.")
    end
  end
end
