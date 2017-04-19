Sequel.migration do
  change do
    create_table :reg_c800 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :cod_sit, String, size: 2
      column :num_cfe, String, size: 6
      column :dt_doc, Date
      column :vl_cfe, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cnpj_cpf, String, size: 14
      column :nr_sat, String, size: 9
      column :chv_cfe, String, size: 44
      column :vl_desc, BigDecimal, size: [18, 2]
      column :vl_merc, BigDecimal, size: [18, 2]
      column :vl_out_da, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_pis_st, BigDecimal, size: [18, 2]
      column :vl_cofins_st, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
