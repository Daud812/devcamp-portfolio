class BlogsController < ApplicationController

  before_action :set_blog, only: %i[ show edit update destroy toggle_status]
  load_and_authorize_resource
  layout "blog"

  # access all: [:show, :index], user: {except: [:destroy,:new,:create,:edit,:update]}, site_admin: :all

  # GET /blogs or /blogs.json
  def index
    @blog = Blog.all
    @page_titel="Blogs"
  end

  # GET /blogs/1 or /blogs/1.json
  def show
    @page_titel=@blog.titel
    @seo_keywords=@blog.body
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.user_id =current_user.id
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was  created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_url(@blog), notice: "Blog was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: "Blog was successfully destroyed." }
    end
  end

  def toggle_status
      if @blog.draft?
        @blog.published!  
     elsif @blog.published?
      @blog.draft!
     end 
    redirect_to blogs_url ,notice: "Post status has been updated."
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:titel, :body)
    end
end
