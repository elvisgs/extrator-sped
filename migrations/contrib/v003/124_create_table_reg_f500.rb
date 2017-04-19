Sequel.migration do
  change do
    create_table :reg_f500 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_rec_caixa, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :vl_desc_pis, BigDecimal, size: [18, 2]
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :vl_desc_cofins, BigDecimal, size: [18, 2]
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_mod, String, size: 2
      column :cfop, String, size: 4
      column :cod_cta, String, size: 60
      column :info_compl, String
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
