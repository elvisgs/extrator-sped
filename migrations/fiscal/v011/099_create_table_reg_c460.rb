Sequel.migration do
  change do
    create_table :reg_c460 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :cod_sit, String, size: 2
      column :num_doc, String, size: 9
      column :dt_doc, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cpf_cnpj, String, size: 14
      column :nome_adq, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
