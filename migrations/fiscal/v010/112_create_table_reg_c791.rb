Sequel.migration do
  change do
    create_table :reg_c791 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :uf, String, size: 2
      column :vl_bc_icms_st, BigDecimal, size: [18, 2]
      column :vl_icms_st, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
