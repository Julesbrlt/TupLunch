Favorite.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
Chat.destroy_all
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
    steps: "Faites cuire les spaghetti dans de l’eau bouillante salée.\nDans une poêle, faites revenir l’oignon et l’ail.\nAjoutez la viande hachée et faites-la dorer.\nIncorporez la sauce tomate et laissez mijoter 15 min.\nÉgouttez les pâtes et servez avec la sauce.",
    image_path: "app/assets/images/Spagetthi-bolo2.png",
    image_url: "https://images.unsplash.com/photo-1692071097529-320eb2b32292?q=80&w=988&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Poulet Curry Coco",
    description: "Poulet tendre cuisiné dans une sauce onctueuse au lait de coco et curry.",
    price: 14,
    time: 40,
    calories: 720,
    steps: "Coupez le poulet en morceaux.\nFaites revenir l’oignon avec un peu d’huile.\nAjoutez les épices.\nIncorporez le poulet et faites dorer.\nVersez le lait de coco et laissez mijoter.",
    image_url: "https://plus.unsplash.com/premium_photo-1707227861789-475326479c2b?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Salade César",
    description: "Salade croquante avec poulet grillé, croûtons et sauce crémeuse au parmesan.",
    price: 9,
    time: 15,
    calories: 450,
    steps: "Lavez et coupez la laitue romaine.\nFaites griller le poulet.\nPréparez la sauce.\nAjoutez les croûtons et le parmesan.\nServez frais.",
    image_url: "https://images.unsplash.com/photo-1574926054530-540288c8e678?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Burger Maison",
    description: "Pain brioché, steak haché, cheddar fondant et sauce spéciale.",
    price: 11,
    time: 25,
    calories: 800,
    steps: "Préparez les steaks hachés.\nFaites cuire selon votre goût.\nToastez les pains.\nAjoutez la sauce, le steak et le fromage.\nServez avec des frites.",
    image_url: "https://plus.unsplash.com/premium_photo-1675252369719-dd52bc69c3df?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Ratatouille Provençale",
    description: "Mélange de légumes mijotés aux herbes de Provence.",
    price: 8,
    time: 35,
    calories: 300,
    steps: "Coupez les légumes.\nFaites revenir les oignons et l’ail.\nAjoutez les légumes.\nAssaisonnez.\nServez chaud ou froid.",
    image_url: "https://plus.unsplash.com/premium_photo-1713635953194-ab8a625b2477?q=80&w=2105&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Sushi Saumon",
    description: "Petits rouleaux de riz vinaigré garnis de saumon frais.",
    price: 15,
    time: 50,
    calories: 500,
    steps: "Faites cuire le riz vinaigré.\nCoupez le saumon.\nÉtalez le riz sur la feuille de nori.\nAjoutez le saumon.\nRoulez et découpez.",
    image_url: "https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?q=80&w=927&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Pizza Margherita",
    description: "Base tomate, mozzarella fondante et basilic frais.",
    price: 10,
    time: 20,
    calories: 700,
    steps: "Étalez la pâte.\nAjoutez la sauce tomate.\nAjoutez la mozzarella.\nEnfournez 12 min à 220°C.\nAjoutez le basilic.",
    image_url: "https://plus.unsplash.com/premium_photo-1673439304183-8840bd0dc1bf?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Tacos Mexicains",
    description: "Tortillas garnies de viande épicée, légumes frais et guacamole.",
    price: 12,
    time: 30,
    calories: 600,
    steps: "Faites cuire la viande épicée.\nPréparez le guacamole.\nChauffez les tortillas.\nAjoutez légumes et sauce.\nRepliez et dégustez.",
    image_url: "https://plus.unsplash.com/premium_photo-1661730329741-b3bf77019b39?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Saumon Grillé",
    description: "Filet de saumon grillé servi avec légumes vapeur et citron.",
    price: 16,
    time: 25,
    calories: 550,
    steps: "Assaisonnez le saumon.\nFaites griller dans une poêle chaude.\nPréparez les légumes vapeur.\nServez avec le saumon.\nAjoutez un filet de citron.",
    image_url: "https://plus.unsplash.com/premium_photo-1723532536299-487180c8fdf5?q=80&w=2028&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Omelette aux Champignons",
    description: "Œufs battus, champignons frais et herbes aromatiques.",
    price: 7,
    time: 10,
    calories: 320,
    steps: "Nettoyez les champignons.\nFaites-les revenir.\nBattez les œufs.\nVersez dans la poêle.\nFaites cuire à feu doux.",
    image_url: "https://images.unsplash.com/photo-1677137261161-0095c10418ef?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Sushi & Makis avec Tempura",
    description: "Assortiment de sushis et makis accompagnés de tempura croustillants.",
    price: 18,
    time: 55,
    calories: 720,
    steps: "Préparez le riz vinaigré.\nRoulez les makis avec poisson et légumes.\nFaites la pâte à tempura.\nFaites frire les légumes et crevettes.\nServez avec sauce soja.",
    image_path: "app/assets/images/sushi2.png",
    image_url: "https://images.unsplash.com/photo-1726514730237-d82e8f4e4163?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Nouilles épicées au poulet",
    description: "Nouilles sautées avec morceaux de poulet et une sauce relevée.",
    price: 13,
    time: 25,
    calories: 680,
    steps: "Faites cuire les nouilles.\nSaisissez le poulet avec ail et piment.\nAjoutez la sauce soja et légumes.\nMélangez avec les nouilles.\nServez chaud.",
    image_path: "app/assets/images/Nouille2.png",
    image_url: "https://images.unsplash.com/photo-1619371042685-827b1c646923?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Spaghetti au parmesan",
    description: "Spaghetti mêlés à une émulsion d’eau de cuisson et parmesan, parfumés à l’ail.",
    price: 12,
    time: 20,
    calories: 580,
    steps: "Faites cuire les spaghetti al dente.\nRéservez une louche d’eau de cuisson.\nHors du feu, mélangez les spaghetti avec le parmesan râpé et un peu d’eau de cuisson jusqu’à texture crémeuse.\nAjoutez l’ail finement haché.\nServez avec quelques feuilles de basilic.",
    image_path: "app/assets/images/parmesan2.png",
    image_url: "https://images.unsplash.com/photo-1608756687911-aa1599ab3bd9?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Tagliatelles à la tomate",
    description: "Pâtes fraîches tagliatelles servies avec une sauce tomate maison.",
    price: 11,
    time: 20,
    calories: 560,
    steps: "Faites cuire les tagliatelles.\nPréparez la sauce tomate avec oignon et ail.\nAjoutez des herbes.\nMélangez avec les pâtes.\nServez avec parmesan râpé.",
    image_path: "app/assets/images/Pate-saussice2.png",
    image_url: "https://images.unsplash.com/photo-1627906295817-622535c6ee5a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE0fHxwYXRlcyUyMHRvbWF0ZXxlbnwwfHwwfHx8MA%3D%3D"
  },
  {
    name: "Salade de pâtes à la Julio",
    description: "Salade fraîche à base de pâtes, d'avocat noirs et vinaigrette légère askip.",
    price: 9,
    time: 15,
    calories: 420,
    steps: "Faites cuire les pâtes.\nLaissez refroidir.\nAjoutez tomates cerises, avocats et olives.\nPréparez une vinaigrette.\nMélangez et servez frais.",
    image_path: "app/assets/images/salade-pate.png",
    image_url: "https://images.unsplash.com/photo-1705088295611-73c993f4705a?q=80&w=1022&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Croque Monsieur",
    description: "Un classique français avec pain de mie, jambon et fromage gratiné.",
    price: 8,
    time: 15,
    calories: 450,
    steps: "Beurrez les tranches de pain.\nAjoutez le jambon et le fromage.\nRefermez et faites dorer à la poêle ou au four.\nServez chaud.",
    image_url: "https://images.unsplash.com/photo-1589308078059-f63424311815?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Club sandwich",
    description: "Sandwich à étages garni de poulet, salade, tomate et mayonnaise.",
    price: 9,
    time: 20,
    calories: 520,
    steps: "Toastez le pain.\nAjoutez poulet, salade, tomate et mayo.\nMontez en étages avec 3 tranches.\nCoupez en triangles et piquez avec un cure-dent.",
    image_url: "https://images.unsplash.com/photo-1603046891744-6f3f6217b174?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Wrap saumon",
    description: "Tortilla roulée avec saumon fumé, fromage frais et crudités.",
    price: 10,
    time: 10,
    calories: 430,
    steps: "Étalez le fromage frais sur la tortilla.\nAjoutez saumon fumé, salade et concombre.\nRoulez serré et coupez en deux.\nServez frais.",
    image_url: "https://images.unsplash.com/photo-1528731708534-816fe59f90cb?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Bowl falafel",
    description: "Bol végétarien avec falafels, houmous et légumes frais.",
    price: 12,
    time: 25,
    calories: 600,
    steps: "Préparez ou chauffez les falafels.\nDressez avec salade, tomates, concombre et carottes.\nAjoutez houmous et sauce tahini.\nServez en bowl.",
    image_url: "https://images.unsplash.com/photo-1617196039897-4f6062c0f3a1?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Lasagne",
    description: "Pâtes en couches avec sauce bolognaise et béchamel gratinée.",
    price: 13,
    time: 40,
    calories: 750,
    steps: "Préparez une sauce bolognaise.\nMontez les couches pâtes, sauce, béchamel et fromage.\nCuisez au four 35 min.\nServez chaud.",
    image_url: "https://images.unsplash.com/photo-1617196039714-6f76e0f03a57?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Hachis Parmentier",
    description: "Purée de pommes de terre gratinée sur un lit de viande hachée.",
    price: 11,
    time: 35,
    calories: 680,
    steps: "Préparez une purée maison.\nFaites revenir la viande hachée avec oignon.\nDisposez viande au fond, purée au-dessus.\nParsemez de fromage et gratinez.",
    image_url: "https://images.unsplash.com/photo-1589308078059-f63424311815?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Avocado toast",
    description: "Toast garni d’avocat écrasé, citron et œuf poché.",
    price: 7,
    time: 12,
    calories: 400,
    steps: "Écrasez l’avocat avec citron et sel.\nToastez le pain.\nAjoutez l’avocat et un œuf poché.\nAssaisonnez et servez.",
    image_url: "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Galettes jambon œuf fromage",
    description: "Galette bretonne garnie de jambon, œuf et fromage fondu.",
    price: 9,
    time: 15,
    calories: 520,
    steps: "Faites chauffer la galette.\nCassez un œuf au centre.\nAjoutez jambon et fromage.\nPliez les bords et laissez cuire.\nServez chaud.",
    image_url: "https://images.unsplash.com/photo-1627906295817-622535c6ee5a?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Chakchouka",
    description: "Plat nord-africain de tomates mijotées avec poivrons, oignons et œufs.",
    price: 10,
    time: 25,
    calories: 480,
    steps: "Faites revenir oignon, ail et poivrons.\nAjoutez tomates et épices.\nLaissez mijoter.\nCassez des œufs sur le dessus et couvrez.\nServez avec pain.",
    image_url: "https://images.unsplash.com/photo-1627308595229-7830a5c91f9e?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Soupe potimarron",
    description: "Velouté de potimarron crémeux avec une touche de muscade.",
    price: 8,
    time: 40,
    calories: 250,
    steps: "Épluchez et coupez le potimarron.\nFaites revenir oignon et ail.\nAjoutez le potimarron et couvrez d’eau.\nMixez avec crème fraîche.\nServez chaud avec persil.",
    image_url: "https://images.unsplash.com/photo-1604908177522-402f9b1ecb7f?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Bruschetta tomate mozzarella",
    description: "Pain grillé garni de tomates fraîches, mozzarella et basilic.",
    price: 7,
    time: 15,
    calories: 320,
    steps: "Faites griller les tranches de pain.\nFrottez-les avec de l’ail.\nAjoutez tomates et mozzarella.\nParsemez de basilic.\nServez avec un filet d’huile d’olive.",
    image_url: "https://images.unsplash.com/photo-1625949275296-938668911a7b?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Steak frites",
    description: "Pièce de bœuf grillée servie avec des frites croustillantes.",
    price: 14,
    time: 25,
    calories: 780,
    steps: "Assaisonnez le steak.\nFaites-le griller selon cuisson souhaitée.\nPréparez les frites maison ou surgelées.\nServez chaud avec sauce au choix.",
    image_url: "https://images.unsplash.com/photo-1604908813323-70c3e50b0f9c?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Ravioles fondue de poireaux",
    description: "Ravioles fraîches servies avec une fondue crémeuse de poireaux.",
    price: 12,
    time: 30,
    calories: 540,
    steps: "Faites cuire les ravioles.\nÉmincez les poireaux et faites-les revenir.\nAjoutez crème et assaisonnez.\nServez chaud avec les ravioles.",
    image_url: "https://images.unsplash.com/photo-1601303246277-3e40c836d13e?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Bœuf bourguignon",
    description: "Plat mijoté de bœuf tendre au vin rouge, carottes et champignons.",
    price: 16,
    time: 180,
    calories: 890,
    steps: "Faites revenir les morceaux de bœuf.\nAjoutez oignon, carottes et champignons.\nDéglacez au vin rouge.\nLaissez mijoter 3h.\nServez avec pommes de terre vapeur.",
    image_url: "https://images.unsplash.com/photo-1601314163482-b30b4a8d5bb7?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Quiche lorraine",
    description: "Tarte salée garnie de lardons, œufs et crème.",
    price: 9,
    time: 45,
    calories: 600,
    steps: "Préparez une pâte brisée.\nGarnissez de lardons.\nMélangez œufs et crème.\nVersez l’appareil et enfournez.\nServez tiède.",
    image_url: "https://images.unsplash.com/photo-1607877398205-d0e83b083ffd?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Tomates farcies",
    description: "Tomates garnies d’une farce de viande hachée et riz.",
    price: 11,
    time: 60,
    calories: 670,
    steps: "Évidez les tomates.\nPréparez une farce avec viande, oignon et riz.\nFarcissez les tomates.\nEnfournez 40 min.\nServez chaud.",
    image_url: "https://images.unsplash.com/photo-1603091936116-fb12b4e0d7a7?w=900&auto=format&fit=crop&q=60"
  },
  {
    name: "Purée saucisse",
    description: "Purée de pommes de terre maison servie avec une saucisse grillée.",
    price: 10,
    time: 35,
    calories: 720,
    steps: "Faites cuire les pommes de terre.\nÉcrasez avec beurre et lait.\nFaites griller la saucisse.\nServez ensemble avec sauce moutarde.",
    image_url: "https://images.unsplash.com/photo-1617196039895-8abf886a5ef1?w=900&auto=format&fit=crop&q=60"
  }
]

recipes_objects = []
 recipes.map do |data|
  recipe = Recipe.create!(data.except(:image_path))
 recipes_objects << recipe
  next unless data[:image_path].present?
  recipe.photos.attach(
    io:File.open(data[:image_path]),
    filename: data[:name],
    content_type: "image/jpg"
  )
end

puts "✅ #{recipes_objects.size} recettes créées"

# # --- Ingrédients globaux ---
ingredients = [
  { name: "Spaghetti", prix_au_kilo: 2 },
  { name: "Bœuf haché", prix_au_kilo: 8 },
  { name: "Tomates", prix_au_kilo: 3 },
  { name: "Oignon", prix_au_kilo: 1 },
  { name: "Ail", prix_au_kilo: 1 },
  { name: "Poulet", prix_au_kilo: 7 },
  { name: "Lait de coco", prix_au_kilo: 3 },
  { name: "Curry en poudre", prix_au_kilo: 2 },
  { name: "Laitue romaine", prix_au_kilo: 2 },
  { name: "Croûtons", prix_au_kilo: 2 },
  { name: "Parmesan", prix_au_kilo: 5 },
  { name: "Pain burger", prix_au_kilo: 3 },
  { name: "Steak haché", prix_au_kilo: 6 },
  { name: "Cheddar", prix_au_kilo: 4 },
  { name: "Aubergine", prix_au_kilo: 2 },
  { name: "Courgette", prix_au_kilo: 2 },
  { name: "Poivron", prix_au_kilo: 2 },
  { name: "Riz à sushi", prix_au_kilo: 4 },
  { name: "Saumon frais", prix_au_kilo: 10 },
  { name: "Saumon fumé", prix_au_kilo: 12 }, # ajouté
  { name: "Feuille de nori", prix_au_kilo: 2 },
  { name: "Mozzarella", prix_au_kilo: 4 },
  { name: "Persil", prix_au_kilo: 1 },
  { name: "Basilic frais", prix_au_kilo: 1 },
  { name: "Tortilla", prix_au_kilo: 3 },
  { name: "Avocat", prix_au_kilo: 3 },
  { name: "Citron", prix_au_kilo: 1 },
  { name: "Œufs", prix_au_kilo: 3 },
  { name: "Champignons", prix_au_kilo: 4 },
  { name: "Nouilles", prix_au_kilo: 3 },
  { name: "Piment", prix_au_kilo: 1 },
  { name: "Sauce soja", prix_au_kilo: 2 },
  { name: "Tagliatelles", prix_au_kilo: 3 },
  { name: "Fusili", prix_au_kilo: 3 },
  { name: "Tomates cerises", prix_au_kilo: 3 },
  { name: "Olives noires", prix_au_kilo: 3 },
  { name: "Crevettes", prix_au_kilo: 8 },
  { name: "Légumes tempura", prix_au_kilo: 5 },
  { name: "Pain de mie", prix_au_kilo: 3 },
  { name: "Jambon", prix_au_kilo: 6 },
  { name: "Fromage râpé", prix_au_kilo: 5 },
  { name: "Mayonnaise", prix_au_kilo: 4 },
  { name: "Concombre", prix_au_kilo: 2 },
  { name: "Carottes", prix_au_kilo: 2 },
  { name: "Falafels", prix_au_kilo: 8 },
  { name: "Houmous", prix_au_kilo: 6 },
  { name: "Sauce tahini", prix_au_kilo: 7 },
  { name: "Feuilles de lasagne", prix_au_kilo: 4 },
  { name: "Béchamel", prix_au_kilo: 5 },
  { name: "Pommes de terre", prix_au_kilo: 2 },
  { name: "Pain complet", prix_au_kilo: 3 },
  { name: "Farine de sarrasin", prix_au_kilo: 4 },
  { name: "Poivrons rouges", prix_au_kilo: 3 },
  { name: "Épices orientales", prix_au_kilo: 3 },
  { name: "Potimarron", prix_au_kilo: 3 },
  { name: "Crème fraîche", prix_au_kilo: 4 },
  { name: "Pain", prix_au_kilo: 2 },
  { name: "Poireau", prix_au_kilo: 2 },
  { name: "Vin rouge", prix_au_kilo: 6 },
  { name: "Lardons", prix_au_kilo: 7 },
  { name: "Pâte brisée", prix_au_kilo: 3 },
  { name: "Riz", prix_au_kilo: 2 },
  { name: "Saucisse", prix_au_kilo: 7 },
  { name: "Beurre", prix_au_kilo: 6 },
  { name: "Lait", prix_au_kilo: 1 },
  { name: "Ravioles fraîches", prix_au_kilo: 6 } # ajouté
]



ingredients_objects = ingredients.map { |data| Ingredient.create!(data) }
puts "✅ #{ingredients_objects.size} ingrédients créés"

#--- Liaisons Recettes ↔ Ingrédients ---

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

# Sushi & Makis avec Tempura
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Riz à sushi"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Saumon frais"), quantity: "1100g")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Feuille de nori"), quantity: "2 feuilles")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Crevettes"), quantity: "100g")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Légumes tempura"), quantity: "150g")

# # Nouilles épicées au poulet
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Nouilles"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Poulet"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Piment"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Sauce soja"), quantity: "2 c.à.s")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1/2 pièce")

# Spaghetti aux parmesan
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Spaghetti"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Parmesan"), quantity: "60g")
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Ail"), quantity: "1 gousse")
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Basilic frais"), quantity: "quelques feuilles")

# Tagliatelles à la tomate
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Tagliatelles"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "3 pièces")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Ail"), quantity: "1 gousse")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Parmesan"), quantity: "20g")

# Salade de pâtes à la Julio
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Fusili"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Tomates cerises"), quantity: "100g")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Avocat"), quantity: "1/2 pièce")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Olives noires"), quantity: "50g")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Persil"), quantity: "quelques feuilles")

# Croque Monsieur
RecipeIngredient.create!(recipe: recipes_objects[15], ingredient: Ingredient.find_by(name: "Pain de mie"), quantity: "2 tranches")
RecipeIngredient.create!(recipe: recipes_objects[15], ingredient: Ingredient.find_by(name: "Jambon"), quantity: "1 tranche")
RecipeIngredient.create!(recipe: recipes_objects[15], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: "50g")

# Club sandwich
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Pain de mie"), quantity: "3 tranches")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Poulet"), quantity: "100g")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Laitue romaine"), quantity: "2 feuilles")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "2 rondelles")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Mayonnaise"), quantity: "1 càs")

# Wrap saumon
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Tortilla"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Saumon fumé"), quantity: "80g")
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Concombre"), quantity: "50g")
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Laitue romaine"), quantity: "2 feuilles")

# Bowl falafel
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Falafels"), quantity: "4 pièces")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Concombre"), quantity: "50g")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Carottes"), quantity: "50g")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Houmous"), quantity: "2 càs")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Sauce tahini"), quantity: "1 càs")

# Lasagne
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Feuilles de lasagne"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Béchamel"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: "80g")

# Hachis Parmentier
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Pommes de terre"), quantity: "300g")
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: "60g")

# Avocado toast
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Pain complet"), quantity: "1 tranche")
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Avocat"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Citron"), quantity: "1/2 pièce")
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Œufs"), quantity: "1 pièce")

# Galettes jambon œuf fromage
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Farine de sarrasin"), quantity: "100g (pour la galette)")
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Jambon"), quantity: "1 tranche")
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Œufs"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: "50g")

# Chakchouka
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "3 pièces")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Poivrons rouges"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Ail"), quantity: "2 gousses")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Œufs"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Épices orientales"), quantity: "1 càs")

# Soupe potimarron
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Potimarron"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Ail"), quantity: "1 gousse")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Crème fraîche"), quantity: "10cl")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Persil"), quantity: "Quelques brins")

# Bruschetta tomate mozzarella
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Pain"), quantity: "4 tranches")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Tomates cerises"), quantity: "150g")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Mozzarella"), quantity: "125g")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Basilic frais"), quantity: "Quelques feuilles")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Ail"), quantity: "1 gousse")

# Steak frites
RecipeIngredient.create!(recipe: recipes_objects[26], ingredient: Ingredient.find_by(name: "Steak haché"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[26], ingredient: Ingredient.find_by(name: "Pommes de terre"), quantity: "300g")

# Ravioles fondue de poireaux
RecipeIngredient.create!(recipe: recipes_objects[27], ingredient: Ingredient.find_by(name: "Pâte brisée"), quantity: "1 paquet de ravioles fraîches")
RecipeIngredient.create!(recipe: recipes_objects[27], ingredient: Ingredient.find_by(name: "Poireau"), quantity: "2 pièces")
RecipeIngredient.create!(recipe: recipes_objects[27], ingredient: Ingredient.find_by(name: "Crème fraîche"), quantity: "15cl")

# Bœuf bourguignon
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: "600g de morceaux")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Carottes"), quantity: "3 pièces")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Champignons"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Vin rouge"), quantity: "50cl")

# Quiche lorraine
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Pâte brisée"), quantity: "1 rouleau")
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Lardons"), quantity: "200g")
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Œufs"), quantity: "3 pièces")
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Crème fraîche"), quantity: "20cl")

# Tomates farcies
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Tomates"), quantity: "4 pièces")
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: "300g")
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Oignon"), quantity: "1 pièce")
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Riz"), quantity: "100g")

# Purée saucisse
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Pommes de terre"), quantity: "400g")
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Beurre"), quantity: "50g")
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Lait"), quantity: "10cl")
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Saucisse"), quantity: "1 pièce")

puts "✅ Liaisons recettes ↔ ingrédients créées"

user.favorites.create(recipe: Recipe.all.sample)
Profile.create!(
  user: user,
  name: "Jean Dupont",
  food_preferences: "Végétarien, aime les pâtes",
  total_budget: 50,
  total_calories: 2000,
  total_recipes: 5
)
