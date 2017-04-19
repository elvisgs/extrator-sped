Sequel.migration do
  change do
    create_table :reg_c176 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod_ult_e, String, size: 2
      column :num_doc_ult_e, String, size: 9
      column :ser_ult_e, String, size: 3
      column :dt_ult_e, Date
      column :cod_part_ult_e, String, size: 60
      column :quant_ult_e, BigDecimal, size: [18, 3]
      column :vl_unit_ult_e, BigDecimal, size: [18, 3]
      column :vl_unit_bc_st, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
