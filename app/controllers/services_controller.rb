class ServicesController < ApplicationController
    def netflix
        @films = Film.all.order(created_at: "DESC")
        @services = Service.find_by(id: 1)
    end
    
    def amazonPrime
        @films = Film.all.order(created_at: "DESC")
        @services = Service.find_by(id: 2)
    end

    def other
        @films = Film.all.order(created_at: "DESC")
        @services = Service.find_by(id: 3)
    end
end
