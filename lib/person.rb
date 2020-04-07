class person

  attr_reader :name
  attr_accessor :bank_account

  def initialize(name, bank_account= 25)
    @name = name
    @bank_account = bank_account
  end

end
