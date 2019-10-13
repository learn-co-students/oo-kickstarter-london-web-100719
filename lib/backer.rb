class Backer

    attr_reader :backed_projects, :name

    def initialize(name)
        @backed_projects = []
        @name = name
    end

    def back_project(project_inst)
        check=@backed_projects
        
        if  check.any?(project_inst)
            puts "already backed"    
        else
            @backed_projects << project_inst
            project_inst.add_backer(self)
        end
            
        #else
        #    puts "already backed"
        #end
    end

end