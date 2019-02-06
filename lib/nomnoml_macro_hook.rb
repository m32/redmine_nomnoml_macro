class NonnomlMacroHookListener < Redmine::Hook::ViewListener

    render_on :view_layouts_base_html_head,
      :partial => "redmine_nomnoml_macro/headers"

    render_on :view_layouts_base_body_bottom,
      :partial => "redmine_nomnoml_macro/add_form"

end
