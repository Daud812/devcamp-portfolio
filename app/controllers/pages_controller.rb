class PagesController < ApplicationController
  def home
   @skills=Skill.all
   @posts=Blog.all
   @portfolio=Portfolio.all

  end

  def about
  end

  def contact
  end
end
