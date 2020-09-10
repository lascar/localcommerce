ActiveAdmin.register Product do

  permit_params do
    permited = [:name, brands: [], varieties: [], aspects: [], packagings: [], sizes: [], calibers: []]
    permited
  end

  form do |f|
    f.inputs I18n.t("active_admin.products.detail") do
      f.input :name
      f.input :brands, as: :array
      f.input :varieties, as: :array
      f.input :aspects, as: :array
      f.input :packagings, as: :array
      f.input :sizes, as: :array
      f.input :calibers, as: :array
    end
    f.actions
  end

end
