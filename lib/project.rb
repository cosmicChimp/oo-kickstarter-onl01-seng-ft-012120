class Project
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    if backer.instance_of? Backer
      self.backers << backer
      backer.backed_projects << self
    end
  end


end 