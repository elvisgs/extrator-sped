Sequel.migration do
  change do
    create_table :reg_c380 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :dt_doc_ini, Date
      column :dt_doc_fin, Date
      column :num_doc_ini, String, size: 6
      column :num_doc_fin, String, size: 6
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_doc_canc, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
