Sequel.migration do
  change do
    create_table :reg_1900 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_apur_icms, String, size: 1
      column :descr_compl_out_apur, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
