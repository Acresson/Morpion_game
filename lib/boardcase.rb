require 'pry'

class BoardCase
attr_accessor :value
attr_accessor :case_id
attr_accessor :used

  def initialize (case_id_to_save,value_to_save)
    @used = 0
    @case_id = case_id_to_save
    @value = value_to_save
  end 

end
