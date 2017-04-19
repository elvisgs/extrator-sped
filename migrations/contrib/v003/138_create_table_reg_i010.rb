Sequel.migration do
  change do
    create_table :reg_i010 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cnpj, String, size: 14
      column :ind_ativ, String, size: 2
      column :info_compl, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
