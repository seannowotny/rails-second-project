# frozen_string_literal: true

class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        notice = 'portfolio_item was successfully created.'
        format.html { redirect_to(portfolios_path, notice: notice) }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = portfolio
  end

  def update
    @portfolio_item = portfolio

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        notice = 'portfolio_item was successfully updated.'
        format.html { redirect_to portfolios_path, notice: notice }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = portfolio
  end

  def portfolio
    Portfolio.find(params[:id])
  end

  def portfolio_params
    portfolio = params.require(:portfolio)
    portfolio.permit(:title, :subtitle, :body)
  end
end
