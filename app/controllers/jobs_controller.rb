class JobsController < ApplicationController

    get '/jobs' do 
        jobs=Job.all
        jobs.to_json(include: [:company])
    end

   
    get '/jobs/:id' do 
        job=Job.find(params[:id])
        job.to_json
    end


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
        job = Job.find(params[:id])
        job.update(
            interview_round: params[:interview_round]
        )
        job.to_json
      end

    
end