Sequel.migration do
  change do
    create_table :reg_d110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_item, String, size: 3
      column :cod_item, String, size: 60
      column :vl_serv, BigDecimal, size: [18, 2]
      column :vl_out, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
