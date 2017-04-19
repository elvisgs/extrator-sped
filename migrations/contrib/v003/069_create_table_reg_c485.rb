Sequel.migration do
  change do
    create_table :reg_c485 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cst_cofins, String, size: 2
      column :vl_item, BigDecimal, size: [18, 2]
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :quant_bc_cofins, BigDecimal, size: [18, 3]
      column :aliq_cofins_quant, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_item, String, size: 60
      column :cod_cta, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
