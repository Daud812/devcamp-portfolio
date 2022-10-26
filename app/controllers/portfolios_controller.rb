class PortfoliosController < ApplicationController
    def index
        @portfolio=Portfolio.all
    end
    def new
    @portfolio = Portfolio.new
    end

    def create
        @portfolio = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio.save
            format.html { redirect_to portfolios_path, notice: 'Portfolio  created.' }
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
    end

     


      def portfolio_params
        params.require(:portfolio).permit(:titel,:subtitel, :body)
      end

end
