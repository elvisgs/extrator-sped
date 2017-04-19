Sequel.migration do
  change do
    create_table :reg_c112 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_da, String, size: 1
      column :uf, String, size: 2
      column :num_da, String, size: 1000
      column :cod_aut, String, size: 1000
      column :vl_da, BigDecimal, size: [18, 2]
      column :dt_vcto, Date
      column :dt_pgto, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
