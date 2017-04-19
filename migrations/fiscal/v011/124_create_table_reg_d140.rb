Sequel.migration do
  change do
    create_table :reg_d140 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part_consg, String, size: 60
      column :cod_mun_orig, String, size: 7
      column :cod_mun_dest, String, size: 7
      column :ind_veic, String, size: 1
      column :veic_id, String, size: 1000
      column :ind_nav, String, size: 1
      column :viagem, Integer
      column :vl_frt_liq, BigDecimal, size: [18, 2]
      column :vl_desp_port, BigDecimal, size: [18, 2]
      column :vl_desp_car_desc, BigDecimal, size: [18, 2]
      column :vl_out, BigDecimal, size: [18, 2]
      column :vl_frt_brt, BigDecimal, size: [18, 2]
      column :vl_frt_mm, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
