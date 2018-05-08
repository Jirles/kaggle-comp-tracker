module FilterBy

  def self.filter
    all.each do |type|
      puts type.name
      puts "----------"
      category.competitions each do |competition|
        competition.print_truncated_details
      end
    end
    puts "* * * * * * * * *"
  end

  def self.find_by_name(name)
    #helper function for find/create by name
    self.all.detect{|x| x.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      self.new(name)
    end
  end

  def self.count
    self.all.count
  end

end
