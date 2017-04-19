Sequel.migration do
  change do
    create_table :reg_c420 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_tot_par, String, size: 7
      column :vlr_acum_tot, BigDecimal, size: [18, 2]
      column :nr_tot, String, size: 2
      column :descr_nr_tot, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
