class SamplesController < ApplicationController
  root 'samples#index'
  get 'samples/index/show' => 'sample#index'
  # get 'samples/index/:aaa/:bbb/:ccc' => 'sample#index'
  # def index
  #   render :text => params
  # end

  def show
    render :text => params
  end
