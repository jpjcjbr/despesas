class Despesa < ActiveRecord::Base
  
  validates_presence_of :descricao
  validates_presence_of :valor
  validates_presence_of :local
  validates_presence_of :data
end
