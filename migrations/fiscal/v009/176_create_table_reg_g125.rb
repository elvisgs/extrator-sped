Sequel.migration do
  change do
    create_table :reg_g125 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_ind_bem, String, size: 60
      column :dt_mov, Date
      column :tipo_mov, String, size: 2
      column :vl_imob_icms_op, BigDecimal, size: [18, 2]
      column :vl_imob_icms_st, BigDecimal, size: [18, 2]
      column :vl_imob_icms_frt, BigDecimal, size: [18, 2]
      column :vl_imob_icms_dif, BigDecimal, size: [18, 2]
      column :num_parc, String, size: 3
      column :vl_parc_pass, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
