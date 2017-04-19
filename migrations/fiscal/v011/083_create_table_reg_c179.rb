Sequel.migration do
  change do
    create_table :reg_c179 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :bc_st_orig_dest, BigDecimal, size: [18, 2]
      column :icms_st_rep, BigDecimal, size: [18, 2]
      column :icms_st_compl, BigDecimal, size: [18, 2]
      column :bc_ret, BigDecimal, size: [18, 2]
      column :icms_ret, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
