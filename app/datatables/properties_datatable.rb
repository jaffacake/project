class PropertiesDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Properties.count,
      iTotalDisplayRecords: properties.total_entries,
      aaData: data
    }
  end

private

  def data
    properties.map do |property|
      [
        link_to(property.name, property),
        h(property.category),
        h(property.released_on.strftime("%B %e, %Y")),
        number_to_currency(property.price)
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
      properties = properties.where("reference like :search or category like :search", search: "%#{params[:sSearch]}%")
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
    columns = %w[reference category released_on price]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end

