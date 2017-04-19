Sequel.migration do
  change do
    create_table :reg_0145 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_inc_trib, String, size: 1
      column :vl_rec_tot, BigDecimal, size: [18, 2]
      column :vl_rec_ativ, BigDecimal, size: [18, 2]
      column :vl_rec_demais_ativ, BigDecimal, size: [18, 2]
      column :info_compl, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
