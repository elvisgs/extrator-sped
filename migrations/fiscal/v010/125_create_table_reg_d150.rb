Sequel.migration do
  change do
    create_table :reg_d150 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mun_orig, String, size: 7
      column :cod_mun_dest, String, size: 7
      column :veic_id, String, size: 1000
      column :viagem, Integer
      column :ind_tfa, String, size: 1
      column :vl_peso_tx, BigDecimal, size: [18, 2]
      column :vl_tx_terr, BigDecimal, size: [18, 2]
      column :vl_tx_red, BigDecimal, size: [18, 2]
      column :vl_out, BigDecimal, size: [18, 2]
      column :vl_tx_adv, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
