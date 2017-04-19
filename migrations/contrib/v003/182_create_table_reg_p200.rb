Sequel.migration do
  change do
    create_table :reg_p200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :per_ref, String, size: 6
      column :vl_tot_cont_apu, BigDecimal, size: [18, 2]
      column :vl_tot_aj_reduc, BigDecimal, size: [18, 2]
      column :vl_tot_aj_acres, BigDecimal, size: [18, 2]
      column :vl_tot_cont_dev, BigDecimal, size: [18, 2]
      column :cod_rec, String, size: 6
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
