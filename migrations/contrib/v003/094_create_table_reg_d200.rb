Sequel.migration do
  change do
    create_table :reg_d200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :cod_sit, String, size: 2
      column :ser, String, size: 4
      column :sub, String, size: 3
      column :num_doc_ini, String, size: 9
      column :num_doc_fin, String, size: 9
      column :cfop, String, size: 4
      column :dt_ref, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_desc, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
