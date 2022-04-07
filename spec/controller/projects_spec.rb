require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
    context "GET #index" do
        it "returns a successful response" do
            get :index
            expect(response).to be_success
        end
    end

    context "GET #show" do
        let!(:project) {Project.create(title: "Title", description: "Description here")}
        it "returns a successful response" do
        get :show, params: {id: project}
        expect(response).to be_success
        end
    end
end

