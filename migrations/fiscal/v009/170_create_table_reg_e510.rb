Sequel.migration do
  change do
    create_table :reg_e510 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cfop, String, size: 4
      column :cst_ipi, String, size: 2
      column :vl_cont_ipi, BigDecimal, size: [18, 2]
      column :vl_bc_ipi, BigDecimal, size: [18, 2]
      column :vl_ipi, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
