ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end

ActiveAdmin.register Song do
  permit_params :title, :artist_name
  actions :all

    form do |f|
      inputs 'Song' do
        f.input :title
        f.input :artist_name
      end
      f.semantic_errors
      f.actions
    end
  end


    ActiveAdmin.register Artist do
  permit_params :name
  actions :all, except: [:destroy]


    form do |f|
      inputs 'Author' do
        f.input :name
      end
      f.semantic_errors
      f.actions
    end


end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
