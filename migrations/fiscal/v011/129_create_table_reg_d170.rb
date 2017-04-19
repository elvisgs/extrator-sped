Sequel.migration do
  change do
    create_table :reg_d170 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part_consg, String, size: 60
      column :cod_part_red, String, size: 60
      column :cod_mun_orig, String, size: 7
      column :cod_mun_dest, String, size: 7
      column :otm, String, size: 1000
      column :ind_nat_frt, String, size: 1
      column :vl_liq_frt, BigDecimal, size: [18, 2]
      column :vl_gris, BigDecimal, size: [18, 2]
      column :vl_pdg, BigDecimal, size: [18, 2]
      column :vl_out, BigDecimal, size: [18, 2]
      column :vl_frt, BigDecimal, size: [18, 2]
      column :veic_id, String, size: 7
      column :uf_id, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
