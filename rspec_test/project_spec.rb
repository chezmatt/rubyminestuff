# #we are going to have to include our Project class in our spec file
# require_relative 'Projects'
# #now we can start Rspec
# #this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
# RSpec.describe Project do
#   #now we can have Rspec test our Project class
#   it 'has a getter and setter for name attribute' do
#     # now we can test our Project class
#     # lets create a new project and make sure we can set the name attribute
#     project = Project.new("Project Name", "I am a project")
#     project.name = "Changed Name"
#     # we should be able to run that code, now lets make sure its changed.
#     # we run the expect method on our projects name and expect our project name to now equal the value of Changed Name, this returns true or false
#     expect(project.name).to eq("Changed Name")
#   end
# end

# # this is the method testing
# require_relative 'project'
# RSpec.describe Project do
#   # ...
#   # building off our previous example lets add a test to make sure our method returns the correct value
#   it 'has a method elevator_pitch to explain name and description' do
#     #lets create two new projects
#     project1 = Project.new('Project 1', 'description 1')
#     project2 = Project.new('Project 2', 'description 2')
#     #if we call elevator_pitch method we should expect to get that project name and description back
#     expect(project1.elevator_pitch).to eq("Project 1, description 1")
#     expect(project2.elevator_pitch).to eq("Project 2, description 2")
#   end
#   # building off our previous example lets add a test to make sure our method returns the correct value
#   it 'added a new method team member' do
#     #lets create two new projects
#     project1 = Project.new('Project 1', 'description 1')
#     project1.add_to_team('name1')
#     project2 = Project.new('Project 2', 'description 2')
#     project2.add_to_team('name2')
#     #if we call elevator_pitch method we should expect to get that project name and description back
#     expect(project1.team_member).to eq(["name1"])
#     expect(project2.team_member).to eq(["name2"])
#   end
# end

# require_relative 'project'

# RSpec.describe Project do
#   it 'should have a getter and a setter for the name attribute' do
#     project = Project.new('Name', 'Description')
#     project.name = 'Project name'
#     expect(project.name).to eq('Project name')
#   end
#
#   it 'should have a getter and a setter for description attribute' do
#     project = Project.new('Name', 'Description')
#     project.description = 'I am a project'
#     expect(project.description).to eq('I am a project')
#   end
#
#   it 'has an initializer with arguments for name and description' do
#     project = Project.new('Name', 'Description')
#     expect(project.name).to eq('Name')
#     expect(project.description).to eq('Description')
#   end
#
#   it 'has a method elevator_pitch to explain name and description' do
#     project1 = Project.new('Project 1', 'description 1')
#     project2 = Project.new('Project 2', 'description 2')
#     expect(project1.elevator_pitch).to eq("Project 1 description 1")
#     expect(project2.elevator_pitch).to eq("Project 2 description 2")
#   end
#
#   it 'has a method add_to_team that adds a new team_member' do
#     project3 = Project.new('Project 3', 'description 3')
#     expect(project3.add_to_team).to eq(1)
#   end
# end
#### BANKING
# this is the method testing
require_relative 'project'
RSpec.describe Project do
  # ...
  # building off our previous example lets add a test to make sure our method returns the correct value
  it 'has a method elevator_pitch to explain name and description' do
    #lets create two new projects
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
  end
  # building off our previous example lets add a test to make sure our method returns the correct value
  it 'added a new method team member' do
    #lets create two new projects
    project1 = Project.new('Project 1', 'description 1')
    project1.add_to_team('name1')
    project2 = Project.new('Project 2', 'description 2')
    project2.add_to_team('name2')
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(project1.team_member).to eq(["name1"])
    expect(project2.team_member).to eq(["name2"])
  end
end