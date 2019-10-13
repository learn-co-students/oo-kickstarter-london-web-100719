class Project

    attr_reader :backers, :title

    def initialize(title)
        @backers = []
        @title = title
    end

    def add_backer(backer_inst)
        check=@backers

        if check.any?(backer_inst)
            puts "already backed"    
        else
            @backers << backer_inst
            backer_inst.back_project(self)
        end


    end

end