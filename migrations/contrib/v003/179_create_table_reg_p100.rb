Sequel.migration do
  change do
    create_table :reg_p100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_ini, Date
      column :dt_fim, Date
      column :vl_rec_tot_est, BigDecimal, size: [18, 2]
      column :cod_ativ_econ, String, size: 8
      column :vl_rec_ativ_estab, BigDecimal, size: [18, 2]
      column :vl_exc, BigDecimal, size: [18, 2]
      column :vl_bc_cont, BigDecimal, size: [18, 2]
      column :aliq_cont, BigDecimal, size: [18, 4]
      column :vl_cont_apu, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 60
      column :info_compl, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
