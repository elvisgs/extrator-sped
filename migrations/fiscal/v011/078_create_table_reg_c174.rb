Sequel.migration do
  change do
    create_table :reg_c174 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_arm, String, size: 1
      column :num_arm, String, size: 1000
      column :descr_compl, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
