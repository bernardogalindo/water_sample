require './lib/factor'
require './lib/water_sample'

class FactorWeight < ActiveRecord::Base
  establish_connection adapter: 'mysql2', host: 'localhost', username: 'root', password: '', database: 'factor_hw'

  has_many :factors
  has_many :water_samples, through: :factors

end
