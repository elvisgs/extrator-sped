Sequel.migration do
  change do
    create_table :reg_c172 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_bc_issqn, BigDecimal, size: [18, 2]
      column :aliq_issqn, BigDecimal, size: [18, 2]
      column :vl_issqn, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
