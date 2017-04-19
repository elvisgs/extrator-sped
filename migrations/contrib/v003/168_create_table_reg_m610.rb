Sequel.migration do
  change do
    create_table :reg_m610 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_cont, String, size: 2
      column :vl_rec_brt, BigDecimal, size: [18, 2]
      column :vl_bc_cont, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :quant_bc_cofins, BigDecimal, size: [18, 3]
      column :aliq_cofins_quant, BigDecimal, size: [18, 4]
      column :vl_cont_apur, BigDecimal, size: [18, 2]
      column :vl_ajus_acres, BigDecimal, size: [18, 2]
      column :vl_ajus_reduc, BigDecimal, size: [18, 2]
      column :vl_cont_difer, BigDecimal, size: [18, 2]
      column :vl_cont_difer_ant, BigDecimal, size: [18, 2]
      column :vl_cont_per, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
