Favorite.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all

user = User.create!(
  email: "test@test.fr",
  password: "123456"
)

# --- Recettes ---
recipes = [
  {
    name: "Spaghetti Bolognaise",
    description: "Un classique italien avec une sauce tomate mijotée et du bœuf haché.",
    price: 12,
    time: 30,
    calories: 650,
    steps: "Faites cuire les spaghetti dans de l’eau bouillante salée.\nDans une poêle, faites revenir l’oignon et l’ail.\nAjoutez la viande hachée et faites-la dorer.\nIncorporez la sauce tomate et laissez mijoter 15 min.\nÉgouttez les pâtes et servez avec la sauce."
  },
  {
    name: "Poulet Curry Coco",
    description: "Poulet tendre cuisiné dans une sauce onctueuse au lait de coco et curry.",
    price: 14,
    time: 40,
    calories: 720,
    steps: "Coupez le poulet en morceaux.\nFaites revenir l’oignon avec un peu d’huile.\nAjoutez les épices.\nIncorporez le poulet et faites dorer.\nVersez le lait de coco et laissez mijoter."
  },
  {
    name: "Salade César",
    description: "Salade croquante avec poulet grillé, croûtons et sauce crémeuse au parmesan.",
    price: 9,
    time: 15,
    calories: 450,
    steps: "Lavez et coupez la laitue romaine.\nFaites griller le poulet.\nPréparez la sauce.\nAjoutez les croûtons et le parmesan.\nServez frais."
  },
  {
    name: "Burger Maison",
    description: "Pain brioché, steak haché, cheddar fondant et sauce spéciale.",
    price: 11,
    time: 25,
    calories: 800,
    steps: "Préparez les steaks hachés.\nFaites cuire selon votre goût.\nToastez les pains.\nAjoutez la sauce, le steak et le fromage.\nServez avec des frites."
  },
  {
    name: "Ratatouille Provençale",
    description: "Mélange de légumes mijotés aux herbes de Provence.",
    price: 8,
    time: 35,
    calories: 300,
    steps: "Coupez les légumes.\nFaites revenir les oignons et l’ail.\nAjoutez les légumes.\nAssaisonnez.\nServez chaud ou froid."
  },
  {
    name: "Sushi Saumon",
    description: "Petits rouleaux de riz vinaigré garnis de saumon frais.",
    price: 15,
    time: 50,
    calories: 500,
    steps: "Faites cuire le riz vinaigré.\nCoupez le saumon.\nÉtalez le riz sur la feuille de nori.\nAjoutez le saumon.\nRoulez et découpez."
  },
  {
    name: "Pizza Margherita",
    description: "Base tomate, mozzarella fondante et basilic frais.",
    price: 10,
    time: 20,
    calories: 700,
    steps: "Étalez la pâte.\nAjoutez la sauce tomate.\nAjoutez la mozzarella.\nEnfournez 12 min à 220°C.\nAjoutez le basilic."
  },
  {
    name: "Tacos Mexicains",
    description: "Tortillas garnies de viande épicée, légumes frais et guacamole.",
    price: 12,
    time: 30,
    calories: 600,
    steps: "Faites cuire la viande épicée.\nPréparez le guacamole.\nChauffez les tortillas.\nAjoutez légumes et sauce.\nRepliez et dégustez."
  },
  {
    name: "Saumon Grillé",
    description: "Filet de saumon grillé servi avec légumes vapeur et citron.",
    price: 16,
    time: 25,
    calories: 550,
    steps: "Assaisonnez le saumon.\nFaites griller dans une poêle chaude.\nPréparez les légumes vapeur.\nServez avec le saumon.\nAjoutez un filet de citron."
  },
  {
    name: "Omelette aux Champignons",
    description: "Œufs battus, champignons frais et herbes aromatiques.",
    price: 7,
    time: 10,
    calories: 320,
    steps: "Nettoyez les champignons.\nFaites-les revenir.\nBattez les œufs.\nVersez dans la poêle.\nFaites cuire à feu doux."
  }
]

recipes_objects = recipes.map { |data| Recipe.create!(data) }
puts "✅ #{recipes_objects.size} recettes créées"

# --- Ingrédients globaux ---
ingredients = [
  { name: "Spaghetti", price_per_unit: 2 },
  { name: "Bœuf haché", price_per_unit: 8 },
  { name: "Tomates", price_per_unit: 3 },
  { name: "Oignon", price_per_unit: 1 },
  { name: "Ail", price_per_unit: 1 },
  { name: "Poulet", price_per_unit: 7 },
  { name: "Lait de coco", price_per_unit: 3 },
  { name: "Curry en poudre", price_per_unit: 2 },
  { name: "Laitue romaine", price_per_unit: 2 },
  { name: "Croûtons", price_per_unit: 2 },
  { name: "Parmesan", price_per_unit: 5 },
  { name: "Pain burger", price_per_unit: 3 },
  { name: "Steak haché", price_per_unit: 6 },
  { name: "Cheddar", price_per_unit: 4 },
  { name: "Aubergine", price_per_unit: 2 },
  { name: "Courgette", price_per_unit: 2 },
  { name: "Poivron", price_per_unit: 2 },
  { name: "Riz à sushi", price_per_unit: 4 },
  { name: "Saumon frais", price_per_unit: 10 },
  { name: "Feuille de nori", price_per_unit: 2 },
  { name: "Mozzarella", price_per_unit: 4 },
  { name: "Basilic frais", price_per_unit: 1 },
  { name: "Tortilla", price_per_unit: 3 },
  { name: "Avocat", price_per_unit: 3 },
  { name: "Citron", price_per_unit: 1 },
  { name: "Œufs", price_per_unit: 3 },
  { name: "Champignons", price_per_unit: 4 }
]

ingredients_objects = ingredients.map { |data| Ingredient.create!(data) }
puts "✅ #{ingredients_objects.size} ingrédients créés"

# --- Liaisons Recettes ↔ Ingrédients ---
# Spaghetti Bolognaise
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Spaghetti"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Ail"), quantity: "2 gousses")

# Poulet Curry Coco
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Poulet"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Lait de coco"), quantity: "200ml")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Curry en poudre"), quantity: "1 c.à.c")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Ail"), quantity: "1 gousse")

# Salade César
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Laitue romaine"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Poulet"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Croûtons"), quantity: "30g")
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Parmesan"), quantity: "20g")

# Burger Maison
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Pain burger"), quantity: "2 pains")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Steak haché"), quantity: "2 steaks")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Cheddar"), quantity: "2 tranches")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1/2 pièce")

# Ratatouille
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Aubergine"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Courgette"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Poivron"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Ail"), quantity: "1 gousse")

# Sushi Saumon
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Riz à sushi"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Saumon frais"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Feuille de nori"), quantity: "2 feuilles")

# Pizza Margherita
RecipeIngredient.create!(recipe: recipes_objects[6], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[6], ingredient: Ingredient.find_by(name: "Mozzarella"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[6], ingredient: Ingredient.find_by(name: "Basilic frais"), quantity: "quelques feuilles")

# Tacos Mexicains
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Tortilla"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Avocat"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1/2 pièce")

# Saumon Grillé
RecipeIngredient.create!(recipe: recipes_objects[8], ingredient: Ingredient.find_by(name: "Saumon frais"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[8], ingredient: Ingredient.find_by(name: "Citron"), quantity: "1/2 pièce")
RecipeIngredient.create!(recipe: recipes_objects[8], ingredient: Ingredient.find_by(name: "Courgette"), quantity: "1 pièce")

# Omelette aux Champignons
RecipeIngredient.create!(recipe: recipes_objects[9], ingredient: Ingredient.find_by(name: "Œufs"), quantity: "3 œufs")
RecipeIngredient.create!(recipe: recipes_objects[9], ingredient: Ingredient.find_by(name: "Champignons"), quantity: "100g")
RecipeIngredient.create!(recipe: recipes_objects[9], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1/4 pièce")

puts "✅ Liaisons recettes ↔ ingrédients créées"



user.favorites.create(recipe: Recipe.create(recipes.first))
Profile.create!(
  user: user,
  name: "Jean Dupont",
  food_preferences: "Végétarien, aime les pâtes"
)
