module CommonUtil
  # -----------------------
  # 1容量あたりいくらか
  # how_match_per_piece
  # 引数：
  #   price: 価格
  #   capacity: 容量
  #   number: 個数（指定無しの場合は1個とみなす） 
  # -----------------------
  def how_match_per_piece(price, capacity, number = 1)
    return ((price.to_f / capacity.to_f) / number.to_f)
  end
  module_function :how_match_per_piece
end