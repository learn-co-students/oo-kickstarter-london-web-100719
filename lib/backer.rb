require "pry"

class Backer

    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        # project.title.add_backer(self)
        project.backers << self
        # "the specific project" receives backer
    end
    
end
