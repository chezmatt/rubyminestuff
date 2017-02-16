Blog.create(name:"this is blog 1",description:"this is a cool blog 1")
Blog.create(name:"this is blog 2",description:"this is a cool blog 2")
Blog.create(name:"this is blog 3",description:"this is a cool blog 3")
Blog.create(name:"this is blog 4",description:"this is a cool blog 4")
Blog.create(name:"this is blog 5",description:"this is a cool blog 5")

Owner.(user:User.third, blog:Blog.all)
Owner.all.update(user:User.third)

Post.create(blog:Blog.find(2),user:User.first,title:"this is cool also!",content:"this is some really cool shit!")

Post.create(blog:Blog.last,user:User.third,title:"this is cool also too!",content:"this is some really cool stuff too")

Post.create(blog:Blog.fourth,user:User.second,title:"this is cool also too!",content:"this is some really cool stuff too")

Post.create(blog:Blog.second,user:User.first,title:"this is cool also too!",content:"this is some really cool stuff too")

Message.create(post: Post.first, user: User.third, author: User.third.first_name, message: "this is trying to get the users first name as the author!")
Message.create(post: Post.first, user: User.third, author: User.third.first_name, message: "if you don't git push you will die")

Post.update(user:User.second)

Post.third.update(user:User.last)

Post.all
Post.new
Post.save
Post.where(user:User.second)
Message.where(user:User.third)
Post.where(blog: Blog.first, user:User.all)
Blog.first.owner.all
Message.find_by_user(2)
Message.find_by_author(User.third.first_name)
Message.where(post: User.first)
Post.find_by_blog(Blog.all)
Blog.find(2).posts.where(user:User.find(3))
Blog.first.Message.all

