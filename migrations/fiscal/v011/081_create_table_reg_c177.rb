Sequel.migration do
  change do
    create_table :reg_c177 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_selo_ipi, String, size: 6
      column :qt_selo_ipi, String, size: 12
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
