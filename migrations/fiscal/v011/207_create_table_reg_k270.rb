Sequel.migration do
  change do
    create_table :reg_k270 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_ini_ap, Date
      column :dt_fin_ap, Date
      column :cod_op_os, String, size: 30
      column :cod_item, String, size: 60
      column :qtd_cor_pos, BigDecimal, size: [18, 3]
      column :qtd_cor_neg, BigDecimal, size: [18, 3]
      column :origem, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
