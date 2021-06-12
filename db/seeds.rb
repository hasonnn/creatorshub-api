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
    title: "Learn How Bake at Home", 
    description: "This course will teach you the skills needed to bake the perfect pastry.",
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
    title: "Learn How to Care for your Houseplants", 
    description: "This course shows you how to Care for your Houseplants.", 
    user_id: 1
)
if C2.persisted?
    C2.episodes = C2_episodes.map {|ep| Episode.new ep}
end

# COURSE 3
C3 = Course.create(title: "Learn How to Use Adobe Photoshop", description: "This course shows you how to use Adobe Photoshop.", user_id: 1)

C4 = Course.create(title: "Learn How to Invest", description: "This course shows you how to invest.", user_id: 1)


