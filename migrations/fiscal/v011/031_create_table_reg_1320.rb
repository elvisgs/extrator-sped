Sequel.migration do
  change do
    create_table :reg_1320 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_bico, Integer
      column :nr_interv, Integer
      column :mot_interv, String, size: 50
      column :nom_interv, String, size: 30
      column :cnpj_interv, String, size: 14
      column :cpf_interv, String, size: 11
      column :val_fecha, BigDecimal, size: [18, 3]
      column :val_abert, BigDecimal, size: [18, 3]
      column :vol_aferi, BigDecimal, size: [18, 3]
      column :vol_vendas, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
