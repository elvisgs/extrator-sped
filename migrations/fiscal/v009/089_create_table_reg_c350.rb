Sequel.migration do
  change do
    create_table :reg_c350 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ser, String, size: 4
      column :sub_ser, String, size: 3
      column :num_doc, String, size: 6
      column :dt_doc, Date
      column :cnpj_cpf, String, size: 14
      column :vl_merc, BigDecimal, size: [18, 2]
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_desc, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofis, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
