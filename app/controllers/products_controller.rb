class ProductsController < ApplicationController
  def index
    @products = Product.all

    render("products/index.html.erb")
  end

  def show
    @like = Like.new
    @photo = Photo.new
    @product = Product.find(params[:id])

    render("products/show.html.erb")
  end

  def new
    @product = Product.new

    render("products/new.html.erb")
  end

  def create
    @product = Product.new

    @product.brand = params[:brand]
    @product.item = params[:item]
    @product.shade = params[:shade]

    save_status = @product.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/products/new", "/create_product"
        redirect_to("/products")
      else
        redirect_back(:fallback_location => "/", :notice => "Product created successfully.")
      end
    else
      render("products/new.html.erb")
    end
  end

  def edit
    @product = Product.find(params[:id])

    render("products/edit.html.erb")
  end

  def update
    @product = Product.find(params[:id])

    @product.brand = params[:brand]
    @product.item = params[:item]
    @product.shade = params[:shade]

    save_status = @product.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/products/#{@product.id}/edit", "/update_product"
        redirect_to("/products/#{@product.id}", :notice => "Product updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Product updated successfully.")
      end
    else
      render("products/edit.html.erb")
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    if URI(request.referer).path == "/products/#{@product.id}"
      redirect_to("/", :notice => "Product deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Product deleted.")
    end
  end
end
