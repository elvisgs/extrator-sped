Sequel.migration do
  change do
    create_table :reg_c130 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_serv_nt, BigDecimal, size: [18, 2]
      column :vl_bc_issqn, BigDecimal, size: [18, 2]
      column :vl_issqn, BigDecimal, size: [18, 2]
      column :vl_bc_irrf, BigDecimal, size: [18, 2]
      column :vl_irrf, BigDecimal, size: [18, 2]
      column :vl_bc_prev, BigDecimal, size: [18, 2]
      column :vl_prev, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
