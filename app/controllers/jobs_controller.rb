class JobsController < ApplicationController
    get '/jobs' do 
        jobs=Job.all
        jobs.to_json
    end
    get '/jobs/:id' do 
        job=Job.find(params[:id])
        job.to_json
    end

    post "/jobs" do 
        job= Job.new(params[:job])
        if job.save
            job.to_json
        else
            {errors: job.errors.full_messages}.to_json
        end

    end
end