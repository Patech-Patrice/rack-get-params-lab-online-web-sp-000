class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new

    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)

    elsif req.path.match(/cart/)
      if @@cart ==[]
        resp.write "Your cart is empty"
    else
      @@cart.each do |item|
      resp.write "#{item}/n"
    end
  end

  elsif req.path.match(/add/)
    item = req.params["item"]
    resp.write add_item_to_cart(item)
  end

  else
      resp.write "Path Not Found"
    end

    resp.finish
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      @@cart << item
      return "added #{item}"
    else
      return "We don't have that item"
    end
  end
end
