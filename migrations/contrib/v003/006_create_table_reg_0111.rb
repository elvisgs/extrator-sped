Sequel.migration do
  change do
    create_table :reg_0111 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :rec_bru_ncum_trib_mi, BigDecimal, size: [18, 2]
      column :rec_bru_ncum_nt_mi, BigDecimal, size: [18, 2]
      column :rec_bru_ncum_exp, BigDecimal, size: [18, 2]
      column :rec_bru_cum, BigDecimal, size: [18, 2]
      column :rec_bru_total, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
