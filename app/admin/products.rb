ActiveAdmin.register Product do

  permit_params do
    permited = [:name, varieties: []]
    permited
  end

  form do |f|
    f.inputs I18n.t("active_admin.products.detail") do
      f.input :name
      f.input :varieties, as: :array
    end
    f.actions
  end

end
