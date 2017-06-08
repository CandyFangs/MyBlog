ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :body, :picture
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 form do |f|
    f.inputs "Upload" do
    	f.input :title, required: true, as: :string
    	f.input :body, required: true, as: :text
      f.input :picture, required: true, as: :file
    end
    f.actions
  end

end
