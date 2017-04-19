Sequel.migration do
  change do
    create_table :reg_c197 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_aj, String, size: 10
      column :descr_compl_aj, String, size: 1000
      column :cod_item, String, size: 60
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :aliq_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_outros, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
