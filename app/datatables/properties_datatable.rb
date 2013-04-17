class PropertiesDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Property.count,
      iTotalDisplayRecords: properties.total_entries,
      aaData: data
    }
  end

private

  def data
    properties.map do |property|
      [
        
        link_to(property.reference, property),
        h(property.description),
        number_to_currency(property.price),
        h(property.occupied),
        h(property.available_date),
        h(property.bedrooms),
        h(property.reception_rooms),
        h(property.furnished),
        h(property.double_glazed),
        h(property.central_heating),
        h(property.upstairs_bathroom),
        h(property.downstairs_bathroom),
        h(property.garage),
        h(property.drive_way),
        
      ]
    end
  end

  def properties
    @properties ||= fetch_properties
  end

  def fetch_properties
    properties = Property.order("#{sort_column} #{sort_direction}")
    properties = properties.page(page).per_page(per_page)
    if params[:sSearch].present?
      properties = properties.where("reference like :search or description like :search", search: "%#{params[:sSearch]}%")
    end
    properties
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[reference description price occupied available_date bedrooms reception_rooms furnished double_glazed central_heating upstairs_bathroom downstairs_bathroom garage drive_way]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

