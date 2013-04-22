module ApplicationHelper
  #
#  def link_to_remove_fields(name, f)
#    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
#  end
#  
#  def link_to_add_fields(name, f, association)
#    new_object = f.object.class.reflect_on_association(association).klass.new
#    id = new_object.object_id
#    fields = f.fields_for(association, new_object, child_index: id) do |builder|
#      render(association.to_s.pluralize + "/" + association.to_s + "_fields", f: builder)
#    end
#    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
#  end
#
   
  # In application controller
  def ellipsisize(minimum_length=4,edge_length=3)
    return self if self.length < minimum_length or self.length <= edge_length*2 
    edge = '.'*edge_length    
    mid_length = self.length - edge_length*2
    gsub(/(#{edge}).{#{mid_length},}(#{edge})/, '\1...\2')
  end
end

