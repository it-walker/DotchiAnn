class ComparesController < ApplicationController
  include CommonUtil

  def new
  end

  def compare
    @leftPrice = params[:leftPrice]
    @leftCapacity = params[:leftCapacity]
    @leftNumber = params[:leftNumber]
    @rightPrice = params[:rightPrice]
    @rightCapacity = params[:rightCapacity]
    @rightNumber = params[:rightNumber]

    leftResult = CommonUtil.how_match_per_piece(@leftPrice, @leftCapacity, @leftNumber)
    rightResult = CommonUtil.how_match_per_piece(@rightPrice, @rightCapacity, @rightNumber)
    @is_left = leftResult < rightResult
  end
end