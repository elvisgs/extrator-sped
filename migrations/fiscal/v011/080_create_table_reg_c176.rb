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
      column :chave_nfe_ult_e, String, size: 44
      column :num_item_ult_e, String, size: 3
      column :vl_unit_bc_icms_ult_e, BigDecimal, size: [18, 2]
      column :aliq_icms_ult_e, BigDecimal, size: [18, 2]
      column :vl_unit_limite_bc_icms_ult_e, BigDecimal, size: [18, 2]
      column :vl_unit_icms_ult_e, BigDecimal, size: [18, 3]
      column :aliq_st_ult_e, BigDecimal, size: [18, 2]
      column :vl_unit_res, BigDecimal, size: [18, 3]
      column :cod_resp_ret, String, size: 1
      column :cod_mot_res, String, size: 1
      column :chave_nfe_ret, String, size: 44
      column :cod_part_nfe_ret, String, size: 60
      column :ser_nfe_ret, String, size: 3
      column :num_nfe_ret, String, size: 9
      column :item_nfe_ret, String, size: 3
      column :cod_da, String, size: 1
      column :num_da, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
