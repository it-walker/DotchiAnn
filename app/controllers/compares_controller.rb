class ComparesController < ApplicationController
  include CommonUtil

  def new
  end

  def index
    @lblPrice = "価格"
    @lblCapacity = "容量（ml, g, cc, cmなど）"
    @lblNumber = "個数"
    @btnClear = "Clear"
    @btnCompare = "どっち？"
  end

  def compare
    # ----------------
    @lblPrice = "価格"
    @lblCapacity = "容量（ml, g, cc, cmなど）"
    @lblNumber = "個数"
    @btnClear = "Clear"
    @btnCompare = "どっち？"
    # ----------------
    @leftPrice = params[:leftPrice]
    @leftCapacity = params[:leftCapacity]
    @leftNumber = params[:leftNumber]
    @rightPrice = params[:rightPrice]
    @rightCapacity = params[:rightCapacity]
    @rightNumber = params[:rightNumber]

    if @leftNumber.empty?
      leftResult = how_match_per_piece(@leftPrice, @leftCapacity)
    else
      leftResult = how_match_per_piece(@leftPrice, @leftCapacity, @leftNumber)
    end

    if @rightNumber.empty?
      rightResult = how_match_per_piece(@rightPrice, @rightCapacity)
    else
      rightResult = how_match_per_piece(@rightPrice, @rightCapacity, @rightNumber)
    end

    @leftPerCapacity = leftResult
    @rightPerCapacity = rightResult
    @is_left = leftResult < rightResult
    @is_right = rightResult < leftResult
  end
end