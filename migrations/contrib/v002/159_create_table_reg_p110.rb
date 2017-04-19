Sequel.migration do
  change do
    create_table :reg_p110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_campo, String, size: 2
      column :cod_det, String, size: 8
      column :det_valor, BigDecimal, size: [18, 2]
      column :inf_compl, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
