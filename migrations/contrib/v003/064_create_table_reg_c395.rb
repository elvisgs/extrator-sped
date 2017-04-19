Sequel.migration do
  change do
    create_table :reg_c395 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :cod_part, String, size: 60
      column :ser, String, size: 3
      column :sub_ser, String, size: 3
      column :num_doc, String, size: 44
      column :dt_doc, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
