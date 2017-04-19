Sequel.migration do
  change do
    create_table :reg_1921 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_aj_apur, String, size: 8
      column :descr_compl_aj, String, size: 1000
      column :vl_aj_apur, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
