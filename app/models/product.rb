class Product < ActiveRecord::Base
  belongs_to :company, inverse_of: :products
end
