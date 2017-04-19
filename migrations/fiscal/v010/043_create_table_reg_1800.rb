Sequel.migration do
  change do
    create_table :reg_1800 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_carga, BigDecimal, size: [18, 2]
      column :vl_pass, BigDecimal, size: [18, 2]
      column :vl_fat, BigDecimal, size: [18, 2]
      column :ind_rat, BigDecimal, size: [18, 6]
      column :vl_icms_ant, BigDecimal, size: [18, 2]
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :vl_icms_apur, BigDecimal, size: [18, 2]
      column :vl_bc_icms_apur, BigDecimal, size: [18, 2]
      column :vl_dif, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
