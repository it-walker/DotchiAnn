module CommonUtil
  def how_match_per_piece(price, capacity, number = 1)
    # return (price.to_f / number.to_f)
    return ((price.to_f / capacity.to_f) / number.to_f)
  end
  module_function :how_match_per_piece
end