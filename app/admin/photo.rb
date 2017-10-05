ActiveAdmin.register Photo do
  permit_params :user_id, :rating, :source, :status

  index do
    selectable_column
    id_column
    column :user
    column :rating
    column :source
    column :status
    column :count_battles
    column :count_win_battles
    column :count_loose_battles
    actions
  end

  show do
    attributes_table do
      row :user
      row :rating
      row :source do
        image_tag(photo.source.url(:thumb))
      end
      row :status
    end
  end

  form do |f|
    f.inputs do
      f.input :user
      f.input :rating
      f.input :status
      f.input :source do
        image_tag(f.photo.source_url(:thumb)) if f.photo.source?
      end
      f.input :source_cache, as: :hidden
    end
    f.actions
  end
end
