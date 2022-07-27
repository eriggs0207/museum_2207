class Museum
  attr_reader :name,
              :exhibits,
              :recommended_exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @recommended_exhibits = []
    @patrons = []

  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.each do |exhibit|
      if patron.interests.include?(exhibit.name)
          @recommended_exhibits << exhibit
          # require'pry'; binding.pry
      end
    end
  end

  def admit(patron)
    @patrons << patron
  end 
end
