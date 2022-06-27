class CompaniesController < ApplicationController
    get "/companies" do 
        companies=Company.all
        companies.to_json(include: :jobs)
    end

    post "/companies" do 
        company= Company.new(params[:company])
        if company.save
            company.to_json
        else
            {errors: company.errors.full_messages}.to_json
        end

    end
end