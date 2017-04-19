Sequel.migration do
  change do
    create_table :reg_d130 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part_consg, String, size: 60
      column :cod_part_red, String, size: 60
      column :ind_frt_red, String, size: 1
      column :cod_mun_orig, String, size: 7
      column :cod_mun_dest, String, size: 7
      column :veic_id, String, size: 7
      column :vl_liq_frt, BigDecimal, size: [18, 2]
      column :vl_sec_cat, BigDecimal, size: [18, 2]
      column :vl_desp, BigDecimal, size: [18, 2]
      column :vl_pedg, BigDecimal, size: [18, 2]
      column :vl_out, BigDecimal, size: [18, 2]
      column :vl_frt, BigDecimal, size: [18, 2]
      column :uf_id, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
