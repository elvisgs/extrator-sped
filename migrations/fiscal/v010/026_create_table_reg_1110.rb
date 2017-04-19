Sequel.migration do
  change do
    create_table :reg_1110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part, String, size: 60
      column :cod_mod, String, size: 2
      column :ser, String, size: 4
      column :num_doc, String, size: 9
      column :dt_doc, Date
      column :chv_nfe, String, size: 44
      column :nr_memo, Integer
      column :qtd, BigDecimal, size: [18, 3]
      column :unid, String, size: 6
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
