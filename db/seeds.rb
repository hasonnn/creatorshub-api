User.delete_all
Course.delete_all
Episode.delete_all

PASSWORD = 'supersecret'
super_user = User.create(
    first_name: "Jon",
    last_name: 'Snow',
    email: 'js@winterfell.gov',
    password: PASSWORD,
    is_admin: true
)

# COURSE 1          episodes url must be embeded
C1_episodes = [
    {title: "How to Bake Chocolate Chip Cookies", description: "Ingredients: 2 cups all-purpose flour, 1/2 teaspoon baking soda, 1/2 teaspoon salt, 6 T. (3/4 cup) butter, melted, 1 cup packed brown sugar, 1/2 cup white sugar, 1 tablespoon vanilla extract, 1 whole egg + 1 egg yolk, 1 cup semisweet chocolate chips or chunks", url: "https://www.youtube.com/embed/VaT3qsoHPQ8", user_id: 1},
    {title: "How to Bake Scones", description: "Ingredients: 150g dried fruits, 150 g cold unsalted butter, 500 g self-raising flour, 2 teaspoons baking powder, 2 teaspoons sugar, 2 large free-range eggs, 4 tablespoons milk", url: "https://www.youtube.com/embed/BVNhJXa5W74", user_id: 1},
    {title: "How to Bake Chocolate Chip Cookies", description: "Ingredients: 3 1/2 cup all-purpose flour, 1 cup water, ½ cup 2% milk, 5 Tbsp sugar, 1 pkg instant dry yeast, 1 1/4 tsp salt, 2 Tbsp unsalted butter", url: "https://www.youtube.com/embed/K689erbK3XI", user_id: 1}
]

C1 = Course.create(
    title: "Baking at Home", 
    description: "This course will dive deep into creating world famous pastries including personalized recipes, step-by-step instructions and best practices. Our instructors will teach you everything you need to know about baking at home.",
    user_id: 1
)
if C1.persisted?
    C1.episodes = C1_episodes.map {|ep| Episode.new ep}
end

# COURSE 2
C2_episodes = [
    {title: "How to Bake Chocolate Chip Cookies Course 2 Ep", description: "Ingredients: 2 cups all-purpose flour, 1/2 teaspoon baking soda, 1/2 teaspoon salt, 6 T. (3/4 cup) butter, melted, 1 cup packed brown sugar, 1/2 cup white sugar, 1 tablespoon vanilla extract, 1 whole egg + 1 egg yolk, 1 cup semisweet chocolate chips or chunks", url: "https://www.youtube.com/embed/VaT3qsoHPQ8", user_id: 1},
    {title: "How to Bake Scones Course 2 Ep", description: "Ingredients: 150g dried fruits, 150 g cold unsalted butter, 500 g self-raising flour, 2 teaspoons baking powder, 2 teaspoons sugar, 2 large free-range eggs, 4 tablespoons milk", url: "https://www.youtube.com/embed/BVNhJXa5W74", user_id: 1},
    {title: "How to Bake Chocolate Chip Cookies Course 2 Ep", description: "Ingredients: 3 1/2 cup all-purpose flour, 1 cup water, ½ cup 2% milk, 5 Tbsp sugar, 1 pkg instant dry yeast, 1 1/4 tsp salt, 2 Tbsp unsalted butter", url: "https://www.youtube.com/embed/K689erbK3XI", user_id: 1}
]

C2 = Course.create(
    title: "Houseplant Care 101", 
    description: "New to being a plant parent? Don't know the first thing of caring for your houseplant? This course will teach you everything you need to know including how much light, how to water and many more.", 
    user_id: 1
)
if C2.persisted?
    C2.episodes = C2_episodes.map {|ep| Episode.new ep}
end

# COURSE 3
C3_episodes = [
    {title: "Adobe Suite: Illustrator", description: "This tutorial covers the basics of getting started inside Adobe Illustrator! I walk through how to set up documents, how to create and modify type, how to draw basic shapes and also give them rounded corners, give a very basic overview of using the pen tool, and then finish showing the brush and blob brush tools.", url: "https://www.youtube.com/embed/AinkCNooh2A", user_id: 1},
    {title: "Adobe Suite: Photoshop", description: "This tutorial was made to familiarize anyone to using Adobe Photoshop, and start creating awesome graphic design and projects today! This long video is a 5-Section tutorial that was designed to be a resource which could be used if one wishes to improve upon/ learn one certain aspect covered in the basics, however if you are a complete beginner, I recommend you follow along the whole way though this tutorial, so hopefully by the end of it, you will be alot more confident with your knowledge and ability as you continue getting more comfortable with the program!", url: "https://www.youtube.com/embed/pFyOznL9UvA", user_id: 1},
    {title: "Adobe Suite: Premiere Pro", description: "From start to finish, this beginners guide will teach you the absolute basics to edit videos… There’s not a day that goes by that we don’t get an email or comment on one of our videos asking questions like “What video editor do you use” or “How do you edit your videos”? So, in this video I will show you how to use the video editing software Adobe Premiere Pro. This guide for beginners will primarily cover the basics to help you get started along with a few tips included for intermediate users as well.", url: "https://www.youtube.com/embed/CYeXf3lzNM8", user_id: 1}
]

C3 = Course.create(
    title: "Learn to Use Adobe Suite", 
    description: "This course will give you the knowledge to understand and use the different Adobe applications including Photoshop, Illustrator, Lightroom and Premiere Pro. ", 
    user_id: 1
)
if C3.persisted?
    C3.episodes = C3_episodes.map {|ep| Episode.new ep}
end

C4 = Course.create(title: "Investing Made Easy", description: "Confused about how to invest? This course will provide you beginner tips, allows you to understand the risks, and ways to diversify your investments.", user_id: 1)


