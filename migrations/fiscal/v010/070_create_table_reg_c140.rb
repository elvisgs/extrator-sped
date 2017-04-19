Sequel.migration do
  change do
    create_table :reg_c140 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_emit, String, size: 1
      column :ind_tit, String, size: 2
      column :desc_tit, String, size: 1000
      column :num_tit, String, size: 1000
      column :qtd_parc, String, size: 2
      column :vl_tit, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
