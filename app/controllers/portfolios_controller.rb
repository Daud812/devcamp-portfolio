class PortfoliosController < ApplicationController
  layout "portfolio"
  # access all: [:show, :index], user: {except: [:destroy,:new,:create,:edit,:update]}, site_admin: :all



    def index
        @portfolio=Portfolio.all
    end

    def new
    @portfolio = Portfolio.new
    3.times {@portfolio.technologies.build}
    end

    def create
        @portfolio = Portfolio.new(params.require(:portfolio).permit(:titel,:subtitel, :body,technologies_attributes: [:name]))
        respond_to do |format|
          if @portfolio.save
            format.html { redirect_to portfolios_path, notice: 'Portfolio  created.' }
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
    end

    def edit
      @portfolio = Portfolio.friendly.find(params[:id])
      
    end
   
    def update
      @portfolio = Portfolio.friendly.find(params[:id])
      respond_to do |format|
        if @portfolio.update(portfolio_params)
          format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
          
        else
          format.html { render :edit, status: :unprocessable_entity }
          
        end
      end
    end


    def show
      @portfolio = Portfolio.friendly.find(params[:id])
    end
 
    def destroy
      @portfolio = Portfolio.friendly.find(params[:id])
    @portfolio.destroy
    respond_to do |format|
      format.html{redirect_to  portfolios_path, notice: "Portfolio was successfully removed"}
    end
    end


    

      def portfolio_params
        params.require(:portfolio).permit(:titel,:subtitel, :body)
      end

end
