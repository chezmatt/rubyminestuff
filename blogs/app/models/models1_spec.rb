require 'rspec'

describe 'trying model shit' do

  it 'should posts stuff' do
    # Post.create(blog: Blog.find(5))
    newblog5 = Blog.create(name:"Blog5", description:"This is a 5 new blog." )
    true.should == false
  end
end