Sequel.migration do
  change do
    create_table :reg_m611 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_tip_coop, String, size: 2
      column :vl_bc_cont_ant_exc_coop, BigDecimal, size: [18, 2]
      column :vl_exc_coop_ger, BigDecimal, size: [18, 2]
      column :vl_exc_esp_coop, BigDecimal, size: [18, 2]
      column :vl_bc_cont, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
