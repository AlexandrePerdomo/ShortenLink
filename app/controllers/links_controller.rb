# frozen_string_literal: true

class LinksController < ApplicationController
  before_action :set_link, only: %i[destroy]
  before_action :set_link_by_code, only: %i[show]

  def index
    @links = Link.from_cookies(read_ids_from_cookies)
    @link = Link.new
  end

  # Add counter visit + redirection
  def show
    redirect_to @link.url
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      add_id_to_cookies(@link.id)
      redirect_to root_path, notice: 'Link was successfully created.'
    else
      @links = Link.all
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    if @link.destroy
      remove_id_from_cookies(@link.id)
      redirect_to root_path, notice: 'Link was successfully destroyed.'
    else
      @links = Link.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def set_link
    @link = Link.find(params[:id])
  end

  def set_link_by_code
    @link = Link.find_by(code: params[:id])
  end

  def link_params
    params.require(:link).permit(:url)
  end

  def read_ids_from_cookies
    return [] unless cookies[:link_ids]

    JSON.parse cookies[:link_ids]
  end

  def add_id_to_cookies(id)
    ids = read_ids_from_cookies
    cookies[:link_ids] = JSON.generate(ids << id)
  end

  def remove_id_from_cookies(id)
    ids = read_ids_from_cookies
    cookies[:link_ids] = JSON.generate(ids - [id])
  end
end
