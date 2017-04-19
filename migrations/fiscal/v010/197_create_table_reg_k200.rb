Sequel.migration do
  change do
    create_table :reg_k200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_est, Date
      column :cod_item, String, size: 60
      column :qtd, BigDecimal, size: [18, 3]
      column :ind_est, String, size: 1
      column :cod_part, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
