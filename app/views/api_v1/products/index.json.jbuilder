json.product_list do
  json.array! @products, :partial => "product", :as => :product
end
