Sequel.migration do
  change do
    create_table :reg_1500 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :per_apu_cred, String, size: 6
      column :orig_cred, String, size: 2
      column :cnpj_suc, String, size: 14
      column :cod_cred, String, size: 3
      column :vl_cred_apu, BigDecimal, size: [18, 2]
      column :vl_cred_ext_apu, BigDecimal, size: [18, 2]
      column :vl_tot_cred_apu, BigDecimal, size: [18, 2]
      column :vl_cred_desc_pa_ant, BigDecimal, size: [18, 2]
      column :vl_cred_per_pa_ant, BigDecimal, size: [18, 2]
      column :vl_cred_dcomp_pa_ant, BigDecimal, size: [18, 2]
      column :sd_cred_disp_efd, BigDecimal, size: [18, 2]
      column :vl_cred_desc_efd, BigDecimal, size: [18, 2]
      column :vl_cred_per_efd, BigDecimal, size: [18, 2]
      column :vl_cred_dcomp_efd, BigDecimal, size: [18, 2]
      column :vl_cred_trans, BigDecimal, size: [18, 2]
      column :vl_cred_out, BigDecimal, size: [18, 2]
      column :sld_cred_fim, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
