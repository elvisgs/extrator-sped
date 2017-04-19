Sequel.migration do
  change do
    create_table :reg_m200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_tot_cont_nc_per, BigDecimal, size: [18, 2]
      column :vl_tot_cred_desc, BigDecimal, size: [18, 2]
      column :vl_tot_cred_desc_ant, BigDecimal, size: [18, 2]
      column :vl_tot_cont_nc_dev, BigDecimal, size: [18, 2]
      column :vl_ret_nc, BigDecimal, size: [18, 2]
      column :vl_out_ded_nc, BigDecimal, size: [18, 2]
      column :vl_cont_nc_rec, BigDecimal, size: [18, 2]
      column :vl_tot_cont_cum_per, BigDecimal, size: [18, 2]
      column :vl_ret_cum, BigDecimal, size: [18, 2]
      column :vl_out_ded_cum, BigDecimal, size: [18, 2]
      column :vl_cont_cum_rec, BigDecimal, size: [18, 2]
      column :vl_tot_cont_rec, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
