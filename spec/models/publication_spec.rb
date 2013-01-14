require 'spec_helper'

describe Publication do
  let(:author) { FactoryGirl.create(:author) }
  before {
    @publication = author.publications.build(title: "Lorem ipsum") }

  subject { @publication }

  it { should respond_to(:title) }
  it { should respond_to(:author_id) }
  it { should respond_to(:author) }
  its(:author) { should == author }

   it { should be_valid }

  describe "when author.nickname is not present" do
    before { @publication.author.nickname = nil }
    it { should_not be_valid }
  end
  
  describe "accessible attributes" do
    it "should not allow access to author" do
      expect do
        Publication.new(author: author.nickname)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
  
end
