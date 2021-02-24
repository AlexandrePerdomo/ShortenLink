# frozen_string_literal: true

class LinksController < ApplicationController
  before_action :set_link, only: %i[destroy]
  before_action :set_link_by_code, only: %i[show]

  def index
    @links = Link.all
    @link = Link.new
  end

  # Add counter visit + redirection
  def show; end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to @link, notice: 'link was successfully created.'
    else
      render :index, status: :unprocessable_entity
    end
  end

  # DELETE /links/1 or /links/1.json
  def destroy
    if @link.destroy
      redirect_to links_url, notice: 'Link was successfully destroyed.'
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_link
    @link = Link.find(params[:id])
  end

  def set_link
    @link = Link.find(params[:id])
  end

  def link_params
    params.require(:link).permit(:url)
  end
end
