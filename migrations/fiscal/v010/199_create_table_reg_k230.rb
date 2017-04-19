Sequel.migration do
  change do
    create_table :reg_k230 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_ini_op, Date
      column :dt_fin_op, Date
      column :cod_doc_op, String, size: 30
      column :cod_item, String, size: 60
      column :qtd_enc, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
