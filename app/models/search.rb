

class Search < ActiveRecord::Base
  def products
    @properties ||= find_properties
  end
  
private
  def find_properties
    properties = Property.order(:name)
    properties = properties.where("name like ?", "%#{keywords}%") if keywords.present?
    properties = properties.where(category_id: category_id) if category_id.present?
    properties = properties.where("price >= ?", min_price) if min_price.present?
    properties = properties.where("price <= ?", max_price) if max_price.present?
    properties
  end
end

