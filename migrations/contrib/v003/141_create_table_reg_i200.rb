Sequel.migration do
  change do
    create_table :reg_i200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_campo, String, size: 2
      column :cod_det, String, size: 5
      column :vl_det, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 60
      column :inf_comp, String, size: 90
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
