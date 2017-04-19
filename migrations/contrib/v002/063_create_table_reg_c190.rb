Sequel.migration do
  change do
    create_table :reg_c190 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :dt_ref_ini, Date
      column :dt_ref_fin, Date
      column :cod_item, String, size: 60
      column :cod_ncm, String, size: 8
      column :ex_ipi, String, size: 3
      column :vl_tot_item, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
