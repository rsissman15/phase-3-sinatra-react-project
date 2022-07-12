class CompaniesController < ApplicationController
    get "/companies" do 
        companies=Company.all
        companies.to_json
    end
    
    get "/companies/:id" do 
        company=Company.find(params[:id])
        company.to_json
    end

    post "/companies" do
       Company.create(
            name: params[:name]
        ).to_json
    end

    delete "/companies/:id" do 
        company=Company.find(params[:id])
        company.destroy
        company.to_json
    end
end