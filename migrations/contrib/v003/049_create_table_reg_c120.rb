Sequel.migration do
  change do
    create_table :reg_c120 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_doc_imp, String, size: 1
      column :num_doc_imp, String, size: 10
      column :vl_pis_imp, BigDecimal, size: [18, 2]
      column :vl_cofins_imp, BigDecimal, size: [18, 2]
      column :num_acdraw, String, size: 20
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
