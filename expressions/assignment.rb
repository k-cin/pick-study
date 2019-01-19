a = b = c = 0
a = b = 1 + 2 + 3
a = b = c = 23 + 50
a = (b = 1 + 2) + 3

class ProjectList
  attr_reader :projects

  def initialize
    @projects = []
  end

  def projects=(list)
    @projects = list.map(&:upcase)
    99
    1000
  end

  def [](offset)
    @projects[offset]
  end
end

pjl = ProjectList.new
p pjl.projects = %w[strip sand prime sand paint sand paint rub paint]
p pjl.projects
