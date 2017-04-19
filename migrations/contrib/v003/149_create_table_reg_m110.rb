Sequel.migration do
  change do
    create_table :reg_m110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_aj, String, size: 1
      column :vl_aj, BigDecimal, size: [18, 2]
      column :cod_aj, String, size: 2
      column :num_doc, String, size: 1000
      column :descr_aj, String, size: 1000
      column :dt_ref, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
