Sequel.migration do
  change do
    create_table :reg_m205 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_campo, String, size: 2
      column :cod_rec, String, size: 6
      column :vl_debito, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
