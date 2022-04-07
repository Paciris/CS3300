require "rails_helper"

RSpec.describe Project, type: :model do
    context "Validations Tests" do
        it "ensures the title is present" do
            project = Project.new(description: "Content of description")
            expect(project.valid?).to eq(false)
        end

        it "ensures the description is present" do
            project = Project.new(title: "Title")
            expect(project.valid?).to eq(false)
        end

        it "is able to save project" do
            project = Project.new(title: "Title", description: "Description here")
            expect(project.save).to eq(true)
        end
    end

    context "Scopes Tests" do
        let(:params) {{title: "Title", description: "A description"}}
        before(:each) do
            Project.create(params)
            Project.create(params)
            Project.create(params)
        end

        it "should return all the projects" do
            expect(Project.count).to eq(3)
        end

    end
end
