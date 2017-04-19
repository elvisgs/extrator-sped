Sequel.migration do
  change do
    create_table :reg_k260 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_op_os, String, size: 30
      column :cod_item, String, size: 60
      column :dt_saida, Date
      column :qtd_saida, BigDecimal, size: [18, 3]
      column :dt_ret, Date
      column :qtd_ret, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
