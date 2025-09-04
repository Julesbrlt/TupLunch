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
    price: 3.10,
    time: 23,
    calories: 650,
    steps: "Dans une casserole d'eau bouillante salée, ajoutez les spaghettis. Laissez cuire à couvert 4 à 5 min (le temps peut changer en fonction des pâtes).\nDans une poêle, faites fondre le beurre. Ceci fait, faites revenir les l'ail et l'oignon jusqu'à ce qu'ils soient bien colorés; cela peut prendre 2 à 3 min.\nPendant ce temps, émincez le boeuf en petits morceaux.\nUne fois les oignons prêts, ajoutez-y la viande, laisser colorer quelque instant puis ajouter le concentré de tomate dilué dans un peu d'eau.\nUne fois les pâtes cuites, passez-les à la passoire.\nServez à part, ou mélangez à la sauce.",
    image_path: "app/assets/images/Spagetthi-bolo2.png",
    image_url: "https://images.unsplash.com/photo-1692071097529-320eb2b32292?q=80&w=988&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Poulet Curry Coco",
    description: "Poulet tendre cuisiné dans une sauce onctueuse au lait de coco et curry.",
    price: 4,
    time: 20,
    calories: 720,
    steps: "Émincer le poulet.\nDans un plat, mélanger avec les mains les morceaux de poulet avec 3 cuillers à café de curry.\nLorsque le poulet est bien imprégné de curry, faire revenir les morceaux dans une poêle (le wok est l'idéal) avec un fond d'huile (surtout pas d'huile d'olive).\nPendant ce temps, après avoir bien secoué la boîte, dans une casserole, faire chauffer le lait de coco avec le reste de curry et une pincée de piment. Mélanger jusqu'à ce que le lait prenne une couleur homogène, sans porter à ébullition.\nVerser la préparation sur le poulet et laisser mijoter environ 10 min en remuant de temps en temps.\nAccompagner de riz parfumé au jasmin ou basmati.",
    image_url: "https://www.etal-des-epices.com/wp-content/uploads/2023/11/poulet-curry-coco.jpg"
  },
  {
    name: "Salade César",
    description: "Salade croquante avec poulet grillé, croûtons et sauce crémeuse au parmesan.",
    price: 3.20,
    time: 15,
    calories: 450,
    steps: "Faites dorer le pain, coupé en cubes, 3 min dans un peu d'huile.\nDéchirez les feuilles de romaine dans un saladier, et ajoutez les croûtons préalablement épongés dans du papier absorbant.\nPréparez la sauce : Faites cuire l'oeuf 1 min 30 dans l'eau bouillante, et rafraîchissez-le.\nCassez-le dans le bol d'un mixeur et mixez, avec tous les autres ingrédients; rectifiez l'assaissonnement et incorporez à la salade.\nDécorez de copeaux de parmesan, et servez.",
    image_url: "https://images.unsplash.com/photo-1574926054530-540288c8e678?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Burger Maison",
    description: "Pain brioché, steak haché, cheddar fondant et sauce spéciale.",
    price: 5,
    time: 25,
    calories: 800,
    steps: "Préparation de la sauce: Mélanger la mayonnaise, la moutarde, les cornichons et les câpres dans un bol. Garder au frais jusqu'à utilisation.\nPréparation des burgers : Mélanger la chapelure et l’oeuf à la viande hachée.\nAjouter l'oignon et mêler le tout. Assaisonner selon les goûts.\nFormer 4 grands burgers (ils doivent être au moins aussi larges que le pain).\nDans une grande poêle, faire chauffer de l'huile.\nLaisser cuire les burgers 5 min de chaque côté à feu moyen.\nOuvrir les pains, les chauffer quelques secondes au four à micro-ondes.\nSur le fond, poser une tranche de fromage, le burger, la laitue puis la sauce, et enfin le couvercle.",
    image_url: "https://plus.unsplash.com/premium_photo-1675252369719-dd52bc69c3df?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Ratatouille Provençale",
    description: "Mélange de légumes mijotés aux herbes de Provence.",
    price: 2.60,
    time: 35,
    calories: 300,
    steps: "Enlevez la peau des tomates en les passant 10-12 min au micro-onde après les avoir incisées: la peau vient alors toute seule).\nCoupez tous les légumes en gros cubes d'environ 2 cm sur 2 cm.\nFaites chauffer l'huile d'olive dans une grande casserole et faites-y fondre les oignons et les gousses d'ail dont vous aurez enlevé le germe.\nAjoutez ensuite les aubergines et laissez cuire 10 min.\nAjoutez les courgettes et le poivron et laissez encore cuire 5 min.\nTerminez par les tomates. Laissez cuire à couvert pendant 30 min, laissez ensuite réduire à découvert pendant au moins 1 h en mélangeant de temps en temps.\nVous pouvez également mouiller les légumes avec du vin blanc sec (un verre) en début de cuisson à couvert.\nSalez, poivrez à votre goût.",
    image_url: "https://plus.unsplash.com/premium_photo-1713635953194-ab8a625b2477?q=80&w=2105&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Sushi Saumon",
    description: "Petits rouleaux de riz vinaigré garnis de saumon frais.",
    price: 6,
    time: 50,
    calories: 500,
    steps: "Préparer d'abord le riz vapeur : laver 3 1/3 tasses de riz à l'eau froide et laisser égoutter pendant 1 heure.\nMettre le riz dans une casserole, verser 1 litre d'eau, porter à ébullition sur feu moyen, couvrir et cuire à feu vif pendant 2 mn. Réduire le feu au minimum et continuer la cuisson 20 mn.\nOuvrir, déposer un linge sur le riz, refermer et laisser reposer 15 mn.\nPréparer l'assaisonnement du riz pour sushi.\nDans une petite casserole, verser 6 cuillères à soupe de vinaigre de riz, 5 cuillères à soupe de sucre et 4 cuillères à café de sel. Faire chauffer quelques secondes pour faire dissoudre le sucre.\nVerser doucement le vinaigre de riz dans le riz cuit encore chaud, mélanger et détacher les grains doucement à l'aide de baguettes.\nFormer de petites boules de riz préparé à sushi - chacune équivalente à 50 ml.\nDéposer le poisson et autres préparations dessus.\nMouler doucement le poisson sur le riz en aplatissant le tout. Déposer sur un plateau.\nEnrouler un morceau de feuille de nori autour (facultatif).\nPrésenter dans une assiette 4 sushis - les 4 extrémités rondes doivent se toucher au centre de l'assiette.\nServir avec du gingembre mariné, du wasabi et de la sauce soja.",
    image_url: "https://cloudfront-eu-central-1.images.arcpublishing.com/lexpress/JFOV377ZGZDOXEKNGU2L67ES4Y.jpg"
  },
  {
    name: "Pizza Margherita",
    description: "Base tomate, mozzarella fondante et basilic frais.",
    price: 4,
    time: 50,
    calories: 700,
    steps: "Préparation de la sauce napolitaine.\nDans une casserole, faites revenir les oignons émincés finement dans de l'huile d'olive.\nUne fois que les oignons ont bien sué, ajoutez les tomates préalablement écrasées à la main dans un saladier.\nAjoutez les gousses d'ail écrasées, le concentré de tomates. Salez et poivrez.\nLaissez mijoter à feux doux jusqu'à ce que le mélange épaississe puis, à feux très doux, ajoutez le basilic frais bien nettoyé et ciselé.\nLaissez encore mijoter doucement quelques minutes pour que le basilic se diffuse dans la sauce.\nPassez la préparation au mixeur à soupe, légèrement afin de ne pas rendre la préparation trop liquide. Réservez.\nPréparation des garnitures: Coupez la mozzarella en fines tranches puis égouttez-la entre plusieurs feuilles d'essuie-tout.\nNettoyez les feuilles de basilic frais.\nRâpez le parmigiano reggiano.\nPréchauffez votre four électrique au thermostat 9 (270°c), 30 minutes avant de commencer à dresser vos pizzas. La chaleur doit être statique et non tournante, chaleur en bas et gril en haut.\nDisposez une grille à l'étage le plus bas de votre four.\nPréparation finale.\nFarinez un large plan de travail, y déposer la pâte qui a doublé de volume durant l'heure de repos.\nÉcrasez la pâte pour enlever l'excédent d'air.\nDélimitez les bords avec le bout des doigts tout en étirant la pâte pour créer les bords de la pizza afin d'avoir une croûte bien marquée. Étirez la pâte selon la méthode 12H/12H10.\nVous n'êtes pas obligé de faire voler la pizza si vous n'y arrivez pas.\nDéposez votre pâte sur une plaque à pizza.\nDéposez une louche de sauce napolitaine puis étalez-la à l'aide de la louche. Répartissez la mozzarella et le parmesan.\nÀ l'aide d'un pinceau culinaire, badigeonnez rapidement d'huile d'olive les bords de la pizza afin qu'ils dorent.\nEnfournez pour environ 8 à 10 minutes sans ouvrir.\nÀ la sortie du four, disposez quelques feuilles de basilic.\nLa pâte doit être fine et croustillante au milieu et plus épaisse et moelleuse sur les bords.",
    image_url: "https://plus.unsplash.com/premium_photo-1673439304183-8840bd0dc1bf?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Tacos Mexicains",
    description: "Tortillas garnies de viande épicée, légumes frais et guacamole.",
    price: 4,
    time: 50,
    calories: 600,
    steps: "À la poêle, faire dorer l'oignon émincé dans un peu d'huile d'olive.\nRajouter la viande, assaisonner et laisser cuire 5 min.\nLaver les feuilles de laitue.\nCouper les tomates et le poivron en petits dés.\nIncorporer le tout à la poêlée avec le coulis de tomate, et poursuivre la cuisson pendant 5 min.\nÉgoutter les haricots rouges et les ajouter 2 min avant la fin de cuisson.\nHors du feu, ajuster l'assaisonnement et saupoudrer généreusement de cumin.\nGarnir les tortillas de préparation et les refermer en les roulant comme des crêpes. Disposer 1 feuille de laitue sur chaque tacos avant de servir.",
    image_url: "https://plus.unsplash.com/premium_photo-1661730329741-b3bf77019b39?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Saumon Grillé",
    description: "Filet de saumon grillé servi avec légumes vapeur et citron.",
    price: 4.30,
    time: 35,
    calories: 550,
    steps: "Peler et émincer la carotte, l'échalote et les poireaux.\nLes répartir dans 4 feuilles de papier aluminium ou sulfurisé légèrement huilées.\nSaler et poivrer.\nPoser les pavés de saumon dessus.\nSaler et poivrer.\nMélanger la crème fraîche et le fumet de poisson.\nVerser le mélange dans les papillotes, déposer un brin d'estragon et fermer.\nFaire cuire 20 minutes au four à 220°C (thermostat 7-8).",
    image_url: "https://plus.unsplash.com/premium_photo-1723532536299-487180c8fdf5?q=80&w=2028&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Omelette aux Champignons",
    description: "Œufs battus, champignons frais et herbes aromatiques.",
    price: 0.60,
    time: 15,
    calories: 320,
    steps: "Battez les 4 œufs avec le sel et le poivre.\nAjoutez dans les œufs battus le gruyère râpé et les champignons de Paris.\nDans une poêle, faites la cuisson.\nDégustez avec une salade.",
    image_url: "https://img.cuisineaz.com/660x660/2013/12/20/i72293-omelette-aux-champignons.jpeg"
  },
  {
    name: "Crevettes à la tempura",
    description: "Assortiment de tempura croustillants.",
    price: 8,
    time: 15,
    calories: 720,
    steps: "Retirez la tête des gambas, épluchez-les en laissant le dernier anneau et la queue.\nFendez les crevettes le long du ventre pour les dédoubler légèrement.\nCiselez-les de 4/5 coups de couteau, en largeur puis séchez-les.\nPour la pâte, battez très légèrement le jaune d'oeuf avec des baguettes dans un bol puis incorporez l'eau glacée, remuez 2 fois puis ajoutez la farine.\nMélangez encore un peu.\nLaissez chauffer l'huile à 175°C.\nPassez les crevettes et légumes dans la pâte puis plongez-les dans l'huile bien chaude.\nLaissez-les cuire jusqu'à obtenir une pâte boursoufflée (elle ne doit pas dorer).\nSortez les crevettes et légumes avec une écumoire, égouttez-les dans une passoire puis posez-les sur du papier absorbant.\nServez tout de suite.",
    image_path: "app/assets/images/sushi2.png",
    image_url: "https://www.kyosushi.com/wp-content/uploads/2024/06/tempura-crevette.png"
  },
  {
    name: "Nouilles au poulet",
    description: "Nouilles sautées avec morceaux de poulet et une sauce exquise.",
    price: 3.70,
    time: 25,
    calories: 680,
    steps: "Préparez votre marinade dans un plat creux avec les dés de poulet, les lamelles d'oignon, les herbes, l'huile et la sauce soja. Mélangez bien, couvrez et laissez mariner au moins deux heures à température ambiante.\nMettez votre julienne dans une grande casserole d'eau bouillante et laissez cuire 6-7 min dès reprise de l'ébullition. Égouttez et réservez.\nFaites cuire vos nouilles dans un grand volume d'eau pendant 3-4 min dès reprise de l'ébullition. Égouttez et réservez.\nDans un wok ou un faitout, versez la marinade et cuisez à feu fort pour dorer le poulet. Quand il est cuit, ajoutez la julienne, puis les nouilles.\nRemuez rapidement en mélangeant bien les ingrédients, et juste avant de servir, ajoutez 4 cuillères à soupe de sauce soja, 2 cuillères à soupe de nuoc mam et 2 cuillères à café de sucre.",
    image_path: "app/assets/images/Nouille2.png",
    image_url: "https://newsgeet.com/wp-content/uploads/2025/01/Nouilles-Sautees-au-Poulet-Caramelise-Une-Recette-Simple-et-Pleine-de-Saveurs-768x640.jpg.webp"
  },
  {
    name: "Spaghetti à la Carbonara",
    description: "Pâtes enrobées d’une sauce crémeuse aux œufs et pecorino, relevées de guanciale croustillant.",
    price: 3.60,
    time: 20,
    calories: 580,
    steps: "Dans une casserole mettre l'eau à bouillir. Une fois l’eau en ébullition, ajouter du sel (moins de 10 g par litre car le guanciale et le pecorino sont déjà assez salés) et plongez-y les pâtes.\nEn même temps, dans un poêle, faites revenir le guanciale avec un tout petit peu d’huile d’olive vierge extra.\nDans un bol, mélangez les oeufs, le pecorino et le poivre jusqu’à l’obtention d’une crème bien onctueuse.\nUne fois les pâtes cuites, versez les dans la poêle avec le guanciale et un peu d’eau de cuisson. Faites sauter le tout pendant quelques secondes puis éteignez le feu. Ajoutez les oeufs et le pecorino et mélangez le tout. Parsemez de pecorino et n’attendez pas à servir après avoir moulu encore un peu de poivre noir.",
    image_path: "app/assets/images/parmesan2.png",
    image_url: "https://images.unsplash.com/photo-1608756687911-aa1599ab3bd9?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Pâtes à l'arrabiata",
    description: "Pâtes nappées d'une sauce tomate maison relevée au paprika et aux herbes de Provence, agrémentée de lardons et chorizo.",
    price: 3.60,
    time: 25,
    calories: 560,
    steps: "Faire revenir les oignons et le poivron à feu moyen dans une poêle avec une cuillère à soupe d'huile d'olive jusqu'à ce que l'oignon commence à dorer et le poivron à suer.\nAjouter les lardons ou le lard et le chorizo à feu doux. Laisser fondre puis monter le feu pour qu'ils dorent.\nPendant ce temps, couper les tomates en petits dés puis les ajouter dans la poêle à feu moyen.\nUne fois que les tomates commencent à fondre en sauce (5 min suffisent), saler, poivrer et mettre une petite cuillère à soupe de paprika.\nMélanger durant 1 min puis mettre les herbes de Provence et environ 3 cuillères à soupe de crème fraîche.\nContinuer à mélanger jusqu'à ce que la sauce soit de couleur homogène et qu'elle frétille un peu!\nEnfin, verser sur des pâtes cuites selon votre goût et saupoudrer de parmesan avec quelques feuilles de basilic.",
    image_path: "app/assets/images/Pate-saussice2.png",
    image_url: "https://i.pinimg.com/736x/3c/e9/99/3ce999fde2a859c56aa755cade1e6c14.jpg"
  },
  {
    name: "Salade de pâtes à la Julio",
    description: "Salade fraîche à base de pâtes, d'avocat noirs et vinaigrette légère askip.",
    price: 2.80,
    time: 15,
    calories: 420,
    steps: "Faites cuire les pâtes.\nLaissez refroidir.\nAjoutez tomates cerises, avocats et olives.\nPréparez une vinaigrette.\nMélangez et servez frais.",
    image_path: "app/assets/images/salade-pate.png",
    image_url: "https://www.undejeunerdesoleil.com/wp-content/uploads/2017/09/Salade_pates_melon_avocat_feta.jpg"
  },
  {
    name: "Croque Monsieur",
    description: "Un classique français avec pain de mie, jambon et fromage gratiné.",
    price: 2,
    time: 15,
    calories: 450,
    steps: "Beurrez les 8 tranches de pain de mie sur une seule face.\nPosez 1 tranche de fromage sur chaque tranche de pain de mie.\nPosez 1 tranche de jambon plié en deux sur 4 tranches de pain de mie.\nRecouvrez avec les autres tartines (face non beurrée au dessus).\nDans un bol, mélangez le fromage râpé avec le lait, le sel, le poivre et la muscade.\nRépartissez le mélange sur les croque-monsieur.\nPlacez sur une plaque au four sous le grill pendant 10 mn.",
    image_url: "https://fac.img.pmdstatic.net/fit/~1~fac~2024~02~22~96807e1f-879d-48c2-89a2-c95628eba78b.jpeg/850x478/quality/80/crop-from/center/focus-point/736%2C1169/croque-monsieur-brioche-au-jambon-et-comte.jpeg"
  },
  {
    name: "Club sandwich",
    description: "Sandwich à étages garni de poulet, salade, tomate et mayonnaise.",
    price: 3.10,
    time: 10,
    calories: 520,
    steps: "Faire cuire l'escalope à feu doux et faire frire les tranches de bacon.\nFaire légèrement toaster le pain de mie.\nSur la première tranche étaler un peu de mayonnaise, disposer un peu de salade, l'escalope découpée en fines lamelles, quelques rondelles d'avocat, saler légèrement, poivrer.\nRecouvrir de la deuxième tranche de pain de mie, étaler encore un peu de mayonnaise, disposer les rondelles de tomates et d'oeuf dur, le bacon.\nRecouvrir de la troisième tranche de pain de mie.\nPresser avec la paume de la main, maintenir avec 2 cure-dents, couper en deux en diagonale.",
    image_url: "https://images.unsplash.com/photo-1665233272941-ae681d11fc06?q=80&w=1065&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Wrap saumon",
    description: "Tortilla roulée avec saumon fumé, fromage frais et crudités.",
    price: 4,
    time: 10,
    calories: 430,
    steps: "Tartiner les tortillas de blé avec le fromage frais.\nParsemer d'aneth.\nRépartir le saumon fumé sur toute la surface.\nAjouter la salade, les tomates.\nSaler, poivrer.\nRouler très serré le wrap et le mettre dans du film étirable.\nRéserver au frais, servir.",
    image_url: "https://media.hellofresh.com/f_auto,fl_lossy,q_auto,w_1200/hellofresh_s3/image/HF220329_R4635_W17_NL_KC5435-1_Add_On_KB_Main_low-91f57f1f.jpg"
  },
  {
    name: "Bowl d'hiver",
    description: "Bol végétarien de riz avec avocat, carottes et choux de Bruxelles rôtis, arrosé d'une marinade savoureuse.",
    price: 2.80,
    time: 25,
    calories: 600,
    steps: "Préchauffer le four à 200°C (thermostat 6-7).\nCuire le riz dans une casserole d'eau bouillante salée.\nÉplucher l'avocat et le détailler en dés. Arroser de jus de citron.\nÉplucher les carottes, les couper en 2 puis en bâtonnets.\nRincer les choux de Bruxelles et les couper en 2.\nÉplucher et hacher l'ail finement. Mélanger l'ail avec le jus d'orange, la sauce soja, l'huile et le miel.\nPlacer les carottes et les choux de Bruxelles sur une plaque recouverte de papier cuisson et arroser de marinade.\nEnfourner 30 minutes.\nDresser les bols : déposer le riz au fond du bol puis ajouter les feuilles de roquette, les bâtonnets de carotte, les choux de Bruxelles et l'avocat. Arroser d'un filet d'huile et de sauce soja puis parsemer de graines de courge.\nServir immédiatement.",
    image_url: "https://media.hellofresh.com/f_auto,fl_lossy,q_auto,w_1200/hellofresh_s3/image/5a0eed7651d3f117ca171e29-5c58bc75.jpg"
  },
  {
    name: "Lasagne",
    description: "Pâtes en couches avec sauce bolognaise et béchamel gratinée.",
    price: 4.30,
    time: 65,
    calories: 750,
    steps: "Couper l'oignon en petits morceaux et faire revenir dans de l'huile d'olive.\nQuand les oignons ont bien bruni, y ajouter les 350g de steak haché.\nFaire cuire à feu moyen puis ajouter la sauce bolognaise.\nPréparez la béchamel. Faire fondre le beurre à feu vif.\nUne fois fondu, rajouter les deux cuillères à soupe de farine puis remuer avec un fouet à feu moyen.\nQuand le mélange est homogène (très rapide), rajouter progressivement le lait sans arrêter de fouetter pour éviter les grumeaux.\nContinuer de remuer jusqu'à ce que la béchamel s'épaississe.\nMélanger la sauce bolognaise faite précédemment avec la béchamel.\nPuis dans un plat à gratin, verser une couche de cette préparation puis recouvrir de pâte à lasagne. Refaire la même chose jusqu'à épuisement de la sauce (environ 2 fois).\nLa dernière couche doit être une couche de sauce. Ajouter le gruyère râpé et faire cuire environ 45 min à 180° (th.6).\nPour savoir si les lasagnes sont cuites, piquer avec un couteau, les pâtes à lasagne doivent être fondantes, donc le couteau doit s'enfoncer sans problème.",
    image_url: "https://www.agatheduchesne.com/wp-content/uploads/2020/03/lasagnes-vege-vegan-agathe-duchesne-blog-recette-proteine-soja.jpg"
  },
  {
    name: "Hachis Parmentier",
    description: "Purée de pommes de terre gratinée sur un lit de viande hachée.",
    price: 4.70,
    time: 35,
    calories: 680,
    steps: "Faire revenir dans une cuillère à café d'huile d'olive la viande et la chair avec l'oignon finement émincé.\nFaire dorer la viande, préparer une purée prête à l'emploi en y ajoutant un jaune d'oeuf et deux cuillères à soupe de crème fraîche.\nAlterner purée et préparation de viande, terminer par le gruyère.\nEnfourner à th 7 (210°C) pendant 25 min, le temps que le gruyère prenne une belle couleur.",
    image_url: "https://cdn.futura-sciences.com/cdn-cgi/image/width=1024,quality=50,format=auto/sources/images/cuisine/AdobeStock_749904550%20hachis%20parmentier%20%20fs2.jpg"
  },
  {
    name: "Avocado toast",
    description: "Toast garni d’avocat écrasé, citron et œuf poché.",
    price: 1.20,
    time: 20,
    calories: 400,
    steps: "Faites cuire les petits pois dans une casserole d’eau bouillante pendant 3 min.\nUne fois cuits, plongez les petits dans un saladier rempli d’eau froide et égouttez.\nCiselez la coriandre et le cerfeuil.\nRécupérez la chair des avocats et écrasez-la avec les petits pois.\nAjoutez le jus de 2 citrons, les herbes ciselées. Assaisonnez avec la fleur de sel et le piment d’Espelette.\nÔtez la queue des radis et coupez-les en quartiers.\nÉpluchez et découpez le concombre en fines rondelles.\nMélangez les légumes et assaisonnez-les avec l’huile d’olive, le jus du dernier citron, la fleur de sel et le piment d’Espelette.\nFaites griller les tranches de pain dans une poêle avec un peu d’huile d’olive. Réservez.\nVersez un filet d’huile d’olive et de piment d’Espelette dans la même poêle, et faites-y cuire les œufs au plat pendant 3 min.\nTartinez les tranches de pains de purée petits-pois-avocat, déposez un œuf par-dessus. Recouvrez de rondelles de concombre et de radis.\nParsemez de fleur de sel, de piment d’Espelette et d’herbes fraîches.",
    image_url: "https://cleananddelicious.com/wp-content/uploads/2025/01/avocado-toast.jpg"
  },
  {
    name: "Galettes jambon œuf fromage",
    description: "Galette bretonne garnie de jambon, œuf et fromage fondu.",
    price: 1.50,
    time: 10,
    calories: 520,
    steps: "Mettre à chauffer une poêle de préférence anti-adhésive, ou légèrement huilée.\nCouvrir tout le fond de la poêle avec au moins 1 cm de râpé (plus pour les gros gourmands), et couvrir avec les 2 tranches de jambon.\nLaisser cuire environ 3 minutes, le jambon doit blanchir et le fromage maintenant fondu, légèrement griller sur les bords de poêle (attention à ne pas trop attendre, risque d'attacher).\nCasser les oeufs sur l'ensemble. Laisser cuire 5 minutes en aidant le blanc d’oeufs à pénétrer sous le jambon avec une spatule.\nPoivrer plus que saler (le fromage sale déjà).\nServir chaud idéalement avec une salade.",
    image_url: "https://www.jeancaby.com/public/uploads/2022/06/galettes-jambon-oeuf-fromage.jpg"
  },
  {
    name: "Chakchouka",
    description: "Plat nord-africain de tomates mijotées avec poivrons, oignons et œufs.",
    price: 2.20,
    time: 50,
    calories: 480,
    steps: "Couper les poivrons en dés.\nÉplucher et couper les tomates en dés.\nCouper les oignons dans la longueur.\nDans une grande poêle, faire revenir le cumin dans l'huile avec les oignons. Puis ajouter et mélanger tous les ingrédients (sauf les œufs et les merguez) et faire compoter pendant une heure.\nVerser le mélange dans une poêle.\nCasser les œufs et couvrir le tout 5 minutes. Enfin, servir avec de la coriandre.",
    image_url: "https://www.cuisinersansgluten.com/wp-content/uploads/2020/07/Chakchouka-sans-gluten.jpg"
  },
  {
    name: "Soupe potimarron",
    description: "Velouté de potimarron crémeux avec une touche de muscade.",
    price: 0.80,
    time: 40,
    calories: 250,
    steps: "Couper le potimarron en morceaux après avoir enlevé les pépins, mais sans l'avoir épluché.\nLe mettre dans une casserole, recouvrir d'eau sans dépasser la hauteur du potimarron et faire cuire à basse température. Ajouter l'ail écrasé et le sel en fin de cuisson.\nMixer le tout.\nServir chaud.",
    image_url: "https://images.unsplash.com/photo-1604152135912-04a022e23696?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  },
  {
    name: "Bruschetta tomate mozzarella",
    description: "Pain grillé garni de tomates fraîches, mozzarella et basilic.",
    price: 1.80,
    time: 15,
    calories: 320,
    steps: "Disposer les tranches de pain de campagne sur une plaque du four.\nDécouper très finement tomates et mozzarella en dés.\nSur chaque tranche de pain, disposer quelques petits morceaux de tomate, puis un peu de mozzarella.\nSaupoudrer chaque tartine d'origan ou de basilic, et verser un filet d'huile d'olive.\nAttendre l'arrivée des invités pour passer les tartines 3 à 5 min au grill, pour que la mozzarella fonde.",
    image_url: "https://images.unsplash.com/photo-1506280754576-f6fa8a873550?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8QnJ1c2NoZXR0YXxlbnwwfHwwfHx8MA%3D%3D"
  },
  {
    name: "Steak frites",
    description: "Pièce de bœuf grillée servie avec des frites croustillantes.",
    price: 4,
    time: 25,
    calories: 780,
    steps: "Assaisonnez le steak.\nFaites-le griller selon cuisson souhaitée.\nPréparez les frites maison ou surgelées.\nServez chaud avec sauce au choix.",
    image_url: "https://images.unsplash.com/photo-1720701247839-9b8433398385?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fFN0ZWFrJTIwZnJpdGVzfGVufDB8fDB8fHww"
  },
  {
    name: "Ravioles fondue de poireaux",
    description: "Ravioles fraîches servies avec une fondue crémeuse de poireaux.",
    price: 2.50,
    time: 30,
    calories: 540,
    steps: "Retirer les mauvaises feuilles des poireaux ainsi que la partie verte foncée, ne garder que le début du vert.\nLes couper en deux dans la longueur et rincer à l'eau très soigneusement afin de retirer toute la terre. Émincer en fines rondelles.\nFaire chauffer l'huile sur feu moyen dans une poêle et mettre les poireaux, saler, poivrer et laisser mijoter durant 25-30 min.\nAjouter la crème liquide et poursuivre la cuisson quelques instants afin que la préparation épaississe un peu.\nLaisser refroidir et confectionner les ravioles (poser une plaque, faire des petits tas de farce, recouvrir d'une deuxième plaque et appuyer tout le tour de la farce de sorte à souder les deux plaques ensemble. Sinon vous pouvez utiliser l'ustensile sur votre machine à pâtes ou comme moi un kit spécial ravioles).\nMettre dans une casserole tous les ingrédients de la sauce au parmesan et faire chauffer sur feu doux le temps de terminer les autres préparations.\nMettre une casserole d'eau salée à bouillir et faire cuire vos ravioles durant 2min30.\nSortir les ravioles de l'eau, éponger légèrement et poser sur l'assiette.\nNapper avec la sauce au parmesan et déguster aussitôt !",
    image_url: "https://image-repository-07c0d87b07ca0475fe83bb98.quitoque.fr/sylius_shop_product_cover/e8/4b/00c716bbd803d4f0b4c2171b2cc3.webp"
  },
  {
    name: "Bœuf bourguignon",
    description: "Plat mijoté de bœuf tendre au vin rouge, carottes et champignons.",
    price: 4,
    time: 70,
    calories: 890,
    steps: "Hacher les oignons. Peler l'ail.\nDans une cocotte minute, faire roussir la viande et les lardons dans l’huile ou le beurre.\nAjouter les oignons, les champignons égouttés et saupoudrer de farine. Mélanger et laisser dorer un instant.\nMouiller avec le vin rouge qui doit recouvrir la viande.\nSaler et poivrer.\nAjouter l’ail et le bouquet garni.\nFermer la cocotte minute.\nLaisser cuire doucement 60 min à partir de la mise en rotation de la soupape.",
    image_url: "https://imag.bonviveur.com/boeuf-bourguignon.jpg"
  },
  {
    name: "Quiche lorraine",
    description: "Tarte salée garnie de lardons, œufs et crème.",
    price: 2,
    time: 45,
    calories: 600,
    steps: "Préchauffer le four à 180°C (thermostat 6). Etaler la pâte dans un moule.\nLa piquer à la fourchette. Parsemer de copeaux de beurre.\nFaire rissoler les lardons à la poêle puis les éponger avec une feuille d'essuie-tout.\nBattre les oeufs, la crème fraîche et le lait.\nAjouter les lardons.\nAssaisonner de sel, de poivre et de muscade.\nVerser sur la pâte.\nCuire 45 à 50 min.\nC'est prêt.\nDéguster.",
    image_url: "https://images.unsplash.com/photo-1650844010413-3f24dc1c182b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8UXVpY2hlJTIwbG9ycmFpbmV8ZW58MHx8MHx8fDA%3D"
  },
  {
    name: "Tomates farcies",
    description: "Tomates garnies d’une farce de viande hachée et riz.",
    price: 2.2,
    time: 60,
    calories: 670,
    steps: "Éplucher et hacher les oignons.\nÉplucher et hacher les gousses d'ail.\nMettre la moitié des oignons dans la chair à saucisse. Ajouter l'ail, le sel, le poivre et un peu de persil.\nCouper le haut des tomates et les évider. Poivrer et saler l'intérieur. Mettre la farce à l'intérieur et remettre les chapeaux.\nMettre le reste des oignons dans un plat avec la chair des tomates.\nMettre les tomates farcies dans le plat. Parsemez d'un peu de thym et mettre une noisette de beurre sur chaque tomate. Faire cuire au four chaud à 180°C (thermostat 6) pendant 1 heure environ.\nServir avec du riz.",
    image_url: "https://cache.marieclaire.fr/data/photo/w1536_ci/58/tomates-farcies-a-l-ancienne.jpg"
  },
  {
    name: "Purée saucisse",
    description: "Purée de pommes de terre maison servie avec une saucisse grillée.",
    price: 1.90,
    time: 35,
    calories: 720,
    steps: "Faites cuire les pommes de terre.\nÉcrasez avec beurre et lait.\nFaites griller la saucisse.\nServez ensemble avec sauce moutarde.",
    image_url: "https://img.hellofresh.com/q_40,w_3840,f_auto,c_limit,fl_lossy/hellofresh_s3/image/HF220826_R214_W41_FR_RFR29804290-1_MB_Main_low-cb1f6108.jpg"
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
  { name: "Bœuf haché", prix_au_kilo: 12 },
  { name: "Tomates", prix_au_kilo: 3 },
  { name: "Oignon", prix_au_kilo: 0.6 },
  { name: "Ail", prix_au_kilo: 0.07 },
  { name: "Poulet", prix_au_kilo: 11 },
  { name: "Lait de coco", prix_au_kilo: 8 },
  { name: "Curry en poudre", prix_au_kilo: 20 },
  { name: "Laitue romaine", prix_au_kilo: 9 },
  { name: "Croûtons", prix_au_kilo: 10 },
  { name: "Parmesan", prix_au_kilo: 27 },
  { name: "Pain burger", prix_au_kilo: 0.3 },
  { name: "Steak haché", prix_au_kilo: 12 },
  { name: "Cheddar", prix_au_kilo: 9 },
  { name: "Aubergine", prix_au_kilo: 4 },
  { name: "Courgette", prix_au_kilo: 3 },
  { name: "Poivron", prix_au_kilo: 4 },
  { name: "Riz à sushi", prix_au_kilo: 6 },
  { name: "Saumon frais", prix_au_kilo: 18 },
  { name: "Saumon fumé", prix_au_kilo: 37 },
  { name: "Feuille de nori", prix_au_kilo: 0.5 },
  { name: "Mozzarella", prix_au_kilo: 8 },
  { name: "Persil", prix_au_kilo: 140 },
  { name: "Basilic frais", prix_au_kilo: 1 },
  { name: "Tortilla", prix_au_kilo: 0.4 },
  { name: "Avocat", prix_au_kilo: 1 },
  { name: "Citron", prix_au_kilo: 0.69 },
  { name: "Œufs", prix_au_kilo: 0.35 },
  { name: "Champignons", prix_au_kilo: 4 },
  { name: "Nouilles", prix_au_kilo: 5 },
  { name: "Chapelure", prix_au_kilo: 3 },
  { name: "Piment", prix_au_kilo: 80 },
  { name: "Sauce soja", prix_au_kilo: 14 },
  { name: "Tagliatelles", prix_au_kilo: 6 },
  { name: "Tomates cerises", prix_au_kilo: 3 },
  { name: "Olives noires", prix_au_kilo: 15 },
  { name: "Crevettes", prix_au_kilo: 42 },
  { name: "Pain de mie", prix_au_kilo: 0.13 },
  { name: "Jambon", prix_au_kilo: 0.6 },
  { name: "Fromage râpé", prix_au_kilo: 9 },
  { name: "Mayonnaise", prix_au_kilo: 6 },
  { name: "Concombre", prix_au_kilo: 2 },
  { name: "Carottes", prix_au_kilo: 3 },
  { name: "Falafels", prix_au_kilo: 0.4 },
  { name: "Houmous", prix_au_kilo: 10 },
  { name: "Sauce tahini", prix_au_kilo: 12 },
  { name: "Feuilles de lasagne", prix_au_kilo: 10 },
  { name: "Béchamel", prix_au_kilo: 5 },
  { name: "Pommes de terre", prix_au_kilo: 2 },
  { name: "Pain complet", prix_au_kilo: 0.2 },
  { name: "Farine de sarrasin", prix_au_kilo: 3 },
  { name: "Potimarron", prix_au_kilo: 3 },
  { name: "Crème fraîche", prix_au_kilo: 4 },
  { name: "Poireau", prix_au_kilo: 4 },
  { name: "Vin rouge", prix_au_kilo: 6 },
  { name: "Lardons", prix_au_kilo: 11 },
  { name: "Pâte brisée", prix_au_kilo: 2 },
  { name: "Riz", prix_au_kilo: 3 },
  { name: "Saucisse", prix_au_kilo: 11 },
  { name: "Beurre", prix_au_kilo: 10 },
  { name: "Lait", prix_au_kilo: 3 },
  { name: "Ravioles fraîches", prix_au_kilo: 14 },
  { name: "Concentré de tomate", prix_au_kilo: 6 },
  { name: "Gingembre mariné", prix_au_kilo: 20 },
  { name: "Wasabi", prix_au_kilo: 77 },
  { name: "Coulis de tomate", prix_au_kilo: 3 },
  { name: "Nuoc mam", prix_au_kilo: 12 },
  { name: "Guanciale", prix_au_kilo: 39 },
  { name: "Paprika", prix_au_kilo: 35 },
  { name: "Chorizo", prix_au_kilo: 14 },
  { name: "Roquette", prix_au_kilo: 12 },
  { name: "Bœuf", prix_au_kilo: 17 },
  { name: "Graines de courge", prix_au_kilo: 11 }
]



ingredients_objects = ingredients.map { |data| Ingredient.create!(data) }
puts "✅ #{ingredients_objects.size} ingrédients créés"

#--- Liaisons Recettes ↔ Ingrédients ---

# Spaghetti Bolognaise
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Spaghetti"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.260, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[0], ingredient: Ingredient.find_by(name: "Ail"), quantity: 2, unit: "gousses")

# Poulet Curry Coco
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Poulet"), quantity: 0.2, unit: "kg" )
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Lait de coco"), quantity: 0.2, unit: "l")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Curry en poudre"), quantity: 0.005, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[1], ingredient: Ingredient.find_by(name: "Ail"), quantity: 1, unit: "gousse")

# Salade César
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Laitue romaine"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Poulet"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Croûtons"), quantity: 0.03, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[2], ingredient: Ingredient.find_by(name: "Parmesan"), quantity: 0.02, unit: "kg")

# Burger Maison
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Pain burger"), quantity: 1, unit: "pain")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Steak haché"), quantity: 0.3, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Cheddar"), quantity: 0.028, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.130, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[3], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Chapelure"), quantity: 0.1, unit: "kg")

# Ratatouille
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Aubergine"), quantity: 0.4, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Courgette"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Poivron"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.260, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[4], ingredient: Ingredient.find_by(name: "Ail"), quantity: 1, unit: "gousse")

# Sushi Saumon
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Riz à sushi"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Saumon frais"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Feuille de nori"), quantity: 2, unit: "feuilles")
RecipeIngredient.create!(recipe: recipes_objects[5], ingredient: Ingredient.find_by(name: "Wasabi"), quantity: 0.01, unit: "kg")

# Pizza Margherita
RecipeIngredient.create!(recipe: recipes_objects[6], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.260, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[6], ingredient: Ingredient.find_by(name: "Mozzarella"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[6], ingredient: Ingredient.find_by(name: "Basilic frais"), quantity: 1, unit: "bouquet")

# Tacos Mexicains
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Tortilla"), quantity: 2, unit: "pièces")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Avocat"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[7], ingredient: Ingredient.find_by(name: "Coulis de tomate"), quantity: 0.1, unit: "kg")

# Saumon Grillé
RecipeIngredient.create!(recipe: recipes_objects[8], ingredient: Ingredient.find_by(name: "Saumon frais"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[8], ingredient: Ingredient.find_by(name: "Citron"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[8], ingredient: Ingredient.find_by(name: "Courgette"), quantity: 0.2, unit: "kg")

# Omelette aux Champignons
RecipeIngredient.create!(recipe: recipes_objects[9], ingredient: Ingredient.find_by(name: "Œufs"), quantity: 3, unit: "œufs")
RecipeIngredient.create!(recipe: recipes_objects[9], ingredient: Ingredient.find_by(name: "Champignons"), quantity: 0.1, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[9], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")

# Crevettes à la tempura
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Riz à sushi"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Crevettes"), quantity: 0.1, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[10], ingredient: Ingredient.find_by(name: "Chapelure"), quantity: 0.1, unit: "kg")

# Nouilles épicées au poulet
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Nouilles"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Poulet"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Piment"), quantity: 0.001, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Sauce soja"), quantity: 0.02, unit: "l")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[11], ingredient: Ingredient.find_by(name: "Nuoc mam"), quantity: 0.02, unit: "l")

# Spaghetti à la Carbonara
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Spaghetti"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Parmesan"), quantity: 0.06, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Ail"), quantity: 1, unit: "gousse")
RecipeIngredient.create!(recipe: recipes_objects[12], ingredient: Ingredient.find_by(name: "Guanciale"), quantity: 0.05, unit: "kg")

# Pâtes à l'arrabiata
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Spaghetti"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.39, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Ail"), quantity: 1, unit: "gousse")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Paprika"), quantity: 0.005, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[13], ingredient: Ingredient.find_by(name: "Chorizo"), quantity: 0.1, unit: "kg")

# Salade de pâtes à la Julio
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Spaghetti"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Tomates cerises"), quantity: 0.1, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Avocat"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Olives noires"), quantity: 0.05, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[14], ingredient: Ingredient.find_by(name: "Persil"), quantity: 0.002, unit: "kg")

# Croque Monsieur
RecipeIngredient.create!(recipe: recipes_objects[15], ingredient: Ingredient.find_by(name: "Pain de mie"), quantity: 2, unit: "tranches")
RecipeIngredient.create!(recipe: recipes_objects[15], ingredient: Ingredient.find_by(name: "Jambon"), quantity: 1, unit: "tranche")
RecipeIngredient.create!(recipe: recipes_objects[15], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: 0.05, unit: "kg")

# Club sandwich
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Pain de mie"), quantity: 3, unit: "tranches")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Poulet"), quantity: 0.1, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.06, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[16], ingredient: Ingredient.find_by(name: "Mayonnaise"), quantity: 0.02, unit: "kg")

# Wrap saumon
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Tortilla"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Saumon fumé"), quantity: 0.08, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Concombre"), quantity: 0.05, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[17], ingredient: Ingredient.find_by(name: "Laitue romaine"), quantity: 1, unit: "pièce")

# Bowl d'hiver
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Falafels"), quantity: 4, unit: "pièces")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.13, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Concombre"), quantity: 0.05, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Carottes"), quantity: 0.05, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Houmous"), quantity: 0.03, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Sauce tahini"), quantity: 0.015, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Roquette"), quantity: 0.1, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[18], ingredient: Ingredient.find_by(name: "Graines de courge"), quantity: 0.01, unit: "kg")

# Lasagne
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Feuilles de lasagne"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.26, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Béchamel"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[19], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: 0.08, unit: "kg")

# Hachis Parmentier
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Pommes de terre"), quantity: 0.3, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[20], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: 0.06, unit: "kg")

# Avocado toast
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Pain complet"), quantity: 1, unit: "tranche")
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Avocat"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Citron"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[21], ingredient: Ingredient.find_by(name: "Œufs"), quantity: 1, unit: "pièce")

# Galettes jambon œuf fromage
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Farine de sarrasin"), quantity: 0.1, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Jambon"), quantity: 1, unit: "tranche")
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Œufs"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[22], ingredient: Ingredient.find_by(name: "Fromage râpé"), quantity: 0.05, unit: "kg")

# Chakchouka
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.39, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Poivron"), quantity: 2, unit: "pièces")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Ail"), quantity: 2, unit: "gousses")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Œufs"), quantity: 2, unit: "pièces")
RecipeIngredient.create!(recipe: recipes_objects[23], ingredient: Ingredient.find_by(name: "Paprika"), quantity: 0.02, unit: "kg")

# Soupe potimarron
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Potimarron"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Ail"), quantity: 1, unit: "gousse")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Crème fraîche"), quantity: 0.01, unit: "l")
RecipeIngredient.create!(recipe: recipes_objects[24], ingredient: Ingredient.find_by(name: "Persil"), quantity: 0.002, unit: "kg")

# Bruschetta tomate mozzarella
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Pain de mie"), quantity: 4, unit: "tranches")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Tomates cerises"), quantity: 0.15, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Mozzarella"), quantity: 0.125, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Basilic frais"), quantity: 1, unit: "bouquet")
RecipeIngredient.create!(recipe: recipes_objects[25], ingredient: Ingredient.find_by(name: "Ail"), quantity: 1, unit: "gousse")

# Steak frites
RecipeIngredient.create!(recipe: recipes_objects[26], ingredient: Ingredient.find_by(name: "Steak haché"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[26], ingredient: Ingredient.find_by(name: "Pommes de terre"), quantity: 0.3, unit: "kg")

# Ravioles fondue de poireaux
RecipeIngredient.create!(recipe: recipes_objects[27], ingredient: Ingredient.find_by(name: "Ravioles fraîches"), quantity: 1, unit: "paquet")
RecipeIngredient.create!(recipe: recipes_objects[27], ingredient: Ingredient.find_by(name: "Poireau"), quantity: 0.3, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[27], ingredient: Ingredient.find_by(name: "Crème fraîche"), quantity: 0.015, unit: "l")

# Bœuf bourguignon
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Bœuf"), quantity: 0.6, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Carottes"), quantity: 0.4, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Champignons"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[28], ingredient: Ingredient.find_by(name: "Vin rouge"), quantity: 0.05, unit: "l")

# Quiche lorraine
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Pâte brisée"), quantity: 1, unit: "pâte")
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Lardons"), quantity: 0.2, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Œufs"), quantity: 3, unit: "pièces")
RecipeIngredient.create!(recipe: recipes_objects[29], ingredient: Ingredient.find_by(name: "Crème fraîche"), quantity: 0.02, unit: "l")

# Tomates farcies
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Tomates"), quantity: 0.52, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Bœuf haché"), quantity: 0.3, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Oignon"), quantity: 1, unit: "pièce")
RecipeIngredient.create!(recipe: recipes_objects[30], ingredient: Ingredient.find_by(name: "Riz"), quantity: 0.1, unit: "kg")

# Purée saucisse
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Pommes de terre"), quantity: 0.4, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Beurre"), quantity: 0.05, unit: "kg")
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Lait"), quantity: 0.01, unit: "l")
RecipeIngredient.create!(recipe: recipes_objects[31], ingredient: Ingredient.find_by(name: "Saucisse"), quantity: 0.1, unit: "kg")

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
