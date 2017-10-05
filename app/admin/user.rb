ActiveAdmin.register User do
  permit_params :name, :email, :role, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :role
    column :sign_in_count
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :role
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
