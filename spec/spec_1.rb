require "rails_helper"

RSpec.describe "Wrong math!" do
    it "Should equal 42, equals 43!" do
        expect(6*7).to eq(43)
    end
end

RSpec.describe "Right math!" do
    it "Should equal 42" do
        expect(6*7).to eq(42)
    end
end

RSpec.describe "hello spec" do
    describe String do
        let(:string) {String.new}
        it "should provide an empty string" do
            expect(string).to eq("")
        end
    end
end