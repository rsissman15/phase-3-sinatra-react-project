class JobsController < ApplicationController

    get '/jobs' do 
        jobs=Job.all
        jobs.to_json
    end

    get '/jobsandcompanies' do 
        jobs=Job.all
        jobs.to_json(include: [:company])
    end

    get '/jobs/:id' do 
        job=Job.find(params[:id])
        job.to_json
    end

    # post "/jobs" do 
    #     job= Job.new(params[:job])
    #     if job.save
    #         job.to_json
    #     else
    #         {errors: job.errors.full_messages}.to_json
    #     end
    # end

    post "/jobs" do
        job=Job.create(
             position: params[:position],
             description: params[:description],
            interview_round: params[:interview_round],
             company_id: params[:company_id]
         )
         job.to_json(include: [:company])
     end

    delete "/jobs/:id" do
        job=Job.find(params[:id])
        job.destroy
        job.to_json
    end


    patch '/jobs/:id' do
        binding.pry
        job = Job.find(params[:id])
        job.update(
            interview_round: params[:interview_round]
        )
        job.to_json
      end

    
end