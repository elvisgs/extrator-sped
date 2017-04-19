Sequel.migration do
  change do
    create_table :reg_k210 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_ini_os, Date
      column :dt_fin_os, Date
      column :cod_doc_os, String, size: 30
      column :cod_item_ori, String, size: 60
      column :qtd_ori, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
