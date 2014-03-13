class Company < ActiveRecord::Base
  has_many :products, inverse_of: :company

  def products_as_hash
    p = self.products
    #p = p.select([:id, :name])
    ActiveRecord::Base.connection.select_all(p)
  end
end
