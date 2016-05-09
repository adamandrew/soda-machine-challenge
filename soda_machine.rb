class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    sodas.select { |soda| soda.brand == soda_brand } [0]
  end

  def sell(soda_brand)
    selected_soda = sodas.select { |soda| soda.brand == soda_brand } [0]
    unless selected_soda.nil?
      @cash += selected_soda.price
    end
    sodas.delete(selected_soda)
  end

end
