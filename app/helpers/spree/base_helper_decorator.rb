Spree::BaseHelper.module_eval do
  def get_recently_viewed_products_ids
    session.fetch("recently_viewed_products", "").split(', ')
  end

  def get_recently_viewed_products
    Spree::Product.where(:id => get_recently_viewed_products_ids)
  end
end
