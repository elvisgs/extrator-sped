Sequel.migration do
  change do
    create_table :reg_1010 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_exp, String, size: 1
      column :ind_ccrf, String, size: 1
      column :ind_comb, String, size: 1
      column :ind_usina, String, size: 1
      column :ind_va, String, size: 1
      column :ind_ee, String, size: 1
      column :ind_cart, String, size: 1
      column :ind_form, String, size: 1
      column :ind_aer, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
