Sequel.migration do
  change do
    create_table :reg_d696 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cst_icms, String, size: 3
      column :cfop, String, size: 4
      column :aliq_icms, BigDecimal, size: [18, 2]
      column :vl_opr, BigDecimal, size: [18, 2]
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_bc_icms_st, BigDecimal, size: [18, 2]
      column :vl_icms_st, BigDecimal, size: [18, 2]
      column :vl_red_bc, BigDecimal, size: [18, 2]
      column :cod_obs, String, size: 6
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
