<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  expose(:<%= plural_table_name %>)
  expose(:<%= singular_table_name %>, attributes: :<%= singular_table_name %>_params)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if <%= singular_table_name %>.save
      redirect_to <%= singular_table_name %>, notice: <%= "'#{human_name} was successfully created.'" %>
    else
      render action: 'new'
    end
  end

  def update
    if <%= singular_table_name %>.update(<%= singular_table_name %>_params)
      redirect_to <%= singular_table_name %>, notice: <%= "'#{human_name} was successfully updated.'" %>
    else
      render action: 'edit'
    end
  end

  def destroy
    <%= singular_table_name %>.destroy
    redirect_to <%= index_helper %>_url, notice: <%= "'#{human_name} was successfully destroyed.'" %>
  end

  private
    def <%= "#{singular_table_name}_params" %>
      <%- if attributes_names.empty? -%>
      params[<%= ":#{singular_table_name}" %>]
      <%- else -%>
      params.require(<%= ":#{singular_table_name}" %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
      <%- end -%>
    end
end
<% end -%>
