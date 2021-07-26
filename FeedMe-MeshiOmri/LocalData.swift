import Foundation

struct LocalData {
    static let isLocal = true
    
    static let categories = [
        "Mexican",
        "Chinese",
        "Greek",
        "Middle Eastern",
        "Indian",
    ]
    
    static let menuItems = [
        MenuItem(
            id: 1,
            name: "Mexican Rice",
            description: "1. First, get out a large skillet with high sides and a lid. You can also use a dutch oven if you prefer. Add the oil to the pan and heat over medium heat.\n2. Once the oil is hot, add in the rice. Stir it gently as it starts to brown. After about 8-10 minutes, it will start to look golden.\n3. Then add in the tomato sauce, vegetable stock, garlic, cumin, salt & pepper. Give it a stir, then close the lid and let the mixture gently simmer.\n4.After about 20 minutes the rice will be cooked and have absorbed all the liquid.\n5. I then like to garnish mine with a little cilantro and lime juice for more flavor.",
            prepTime: "30min",
            category: "Mexican",
            imageURL: URL(fileURLWithPath: "mx_rice")
        ),
        MenuItem(
            id: 2,
            name: "Mexican Corn",
            description: "1. After the corn is cooked, you’ll want to let it cool a little for two reasons. First, you’ll be inserting some sturdy wooden sticks for handles and you don’t want to burn your fingers off.\n2. Second, you’ll need to slather it in mayonnaise. If it’s too hot, the mayo will slide right off. The remaining ingredients need to stick to the mayo.\n3. After the mayo has been applied, sprinkle or roll the corn in grated cotija cheese. Cotija is a sharp, salty cheese. If you absolutely cannot find cotija then you can use parmesan cheese. You can also use crumbled queso fresco, but it will have a totally different flavor.\n4. The last three ingredients are important but depend on your own taste. Lime juice is going to add zest, brighten and enhance all the flavors. Chili powder adds a great smoky flavor.\n5. Hot sauce is the final ingredient to add another dimension of flavor and some heat.",
            prepTime: "15min",
            category: "Mexican",
            imageURL: URL(fileURLWithPath: "mex_corn")
        ),
        MenuItem(
            id: 3,
            name: "Chinese Hot Pots",
            description: "1. In a large pot, bring the chicken stock, water, vinegar, soy sauce, sesame oil, ginger and garlic to a boil.\n2. Add the chicken and simmer for 5-7 minutes, until just cooked through.\n3. Add the noodles. Stir, then cover and remove from heat.Meanwhile chop all the veggies and place in serving bowls.When ready to serve, allow each person to fill their bowls with fresh vegetables and a bit of chile sauce.Then ladle the scalding hot soup over the veggies and let them sit for 5 minutes.\n4. Mix and eat!",
            prepTime: "25min",
            category: "Chinese",
            imageURL: URL(fileURLWithPath: "ch_pot")
        ),
        MenuItem(
            id: 4,
            name: "Chinese Orange Chicken",
            description: "1. To make the marinade, whisk together chicken broth, orange juice, sugar, vinegar, soy sauce, garlic, orange zest, Sriracha, ginger and white pepper in a large bowl.\n2. In a gallon size Ziploc bag or large bowl, combine chicken and 2/3 cup of the marinade; marinate for at least 30 minutes, turning the bag occasionally.\n3. Drain the chicken from the marinade, discarding the marinade.\n4. Heat remaining marinade in a medium saucepan over medium heat. Bring to a boil and stir in 2 tablespoons cornstarch combined with 2 tablespoons water. Cook, stirring frequently, until thickened about 1-2 minutes; keep warm.\n5 .Working one at a time, dip the chicken into the eggs, then dredge in remaining 1 cup cornstarch, pressing to coat.\n6. Heat vegetable oil in a large saucepan. Working in batches, add chicken and fry until golden brown and cooked through, about 1-2 minutes.\n7. Transfer to a paper towel-lined plate; discard excess oil.\n8. Serve chicken immediately, tossed or drizzled with the marinade, garnished with sesame seeds and green onion, if desired.",
            prepTime: "50min",
            category: "Chinese",
            imageURL: URL(fileURLWithPath: "ch_chicken")
        ),
        MenuItem(
            id: 5,
            name: "Pork Souvlaki with Tzatziki",
            description: "1. Mix all of the marinade ingredients together in a small mixing bowl.\n2. Place pork tenderloin cubes in a large Ziploc bag or glass tupperware container and pour in the marinade. Seal the bag or close the container and toss to coat the pork with the marinade. Refrigerate the pork for two hours.\n3. Before grilling soak wooden skewers in water for 20 minutes unless you are using metal skewers.\n4. When you are ready to grill the pork heat the grill to medium high heat.\n5. Remove the pork from the fridge and remove the pork from the container or bag and discard the marinade.\n6. Set out a large platter or wooden cutting board. Thread the pork onto the wood or metal skewers.\n7. While the grill is heating make the Tzatziki sauce by combining the Greek yogurt, garlic, extra virgin olive oil, red wine vinegar, oregano, thyme, salt and pepper and stir well to combine. Put in a covered container and refrigerate until ready to serve.\n8. To make the Greek salad combine the cucumber, tomato, olives, mint, parsley, oregano and feta cheese in a medium mixing bowl. In a mason jar or salad dressing container combine the lemon juice and olive oil and then pour on the salad and stir to combine. Refrigerate until ready to use.\n9 When the grill is ready grill the prok until browned on all sides, turning every couple of minutes. The pork should be cooked to a temperature of 145 degrees F which should take about 10 minutes.\n10.Remove from the grill and let the pork rest for 3 minutes.\n11. Serve the pork skewers with pita, greek salad and tzatziki.",
            prepTime: "32min",
            category: "Greek",
            imageURL: URL(fileURLWithPath: "gr_souvlaki")
        ),
        MenuItem(
            id: 6,
            name: "Greek Salad",
            description: "1. Begin by placing cucumbers and cherry tomatoes in a bowl and sprinkling them with salt.\n2. Mix well and let them sit for at least 15 minutes to draw out excess liquid. Set aside.\n3. While the cucumbers and tomatoes are soaking, add the red onion, red pepper, olives, feta, and fresh mint in a large bowl.\n4. Next, pour the cucumbers and tomatoes into a sieve and discard the excess liquid.\n5. Add them to the bowl with the rest of the salad ingredients and gently mix all of the ingredients together.\n6. Finally, add 3-4 tablespoons of Greek salad dressing to the bowl and mix until all of the ingredients are covered in dressing.\n7. Serve immediately.\n8. If this Greek salad is a meal prep meal, wait to add the dressing until right before serving.",
            prepTime: "30min",
            category: "Greek",
            imageURL: URL(fileURLWithPath: "gr_salad")
        ),
        MenuItem(
            id: 7,
            name: "Falafel",
            description: "1.Pulse the drained chickpeas, onion, garlic, cilantro, parsley, coriander, cumin and lemon zest until it forms a coarse meal.Sprinkle in the flour and baking soda and pulse a few times to combine, then test the mixture to make sure that it holds together adding more flour until it does.Refrigerate the mixture in a covered container for a few hours.Form the mixture into balls or patties.\n2. Heat oil in pan to 350F/180C, fry the balls in small batches until golden brown, about 4-6 minutes and set aside on paper towels to drain.Assemble sandwich and enjoy!\n3. Mix everything.",
            prepTime: "16hr30min",
            category: "Middle Eastern",
            imageURL: URL(fileURLWithPath: "me_falafel")
        ),
        MenuItem(
            id: 8,
            name: "Hummus",
            description: "Combine all ingredients in the food processor and puree, adding water as needed to reach desired consistency.",
            prepTime: "45min",
            category: "Middle Eastern",
            imageURL: URL(fileURLWithPath: "me_hummus")
        ),
        MenuItem(
            id:9,
            name:"Indian Pepper Chicken Masala",
            description: "1.Combine the onion, ginger, garlic, coriander, turmeric, and one tablespoon of whole black peppercorns in the bowl of a food processor. Grind until it forms a paste, then toss with chicken pieces and refrigerate for one hour.\n2. Heat 1 tablespoon of ghee or oil in a large skillet over medium-high heat.\n3. Saute the chicken for 4 to 5 minutes, or until cooked through. Set aside.Wipe out the pan with a paper towel, then add the remaining tablespoon of oil or ghee.\n4. Add the cinnamon stick and whole cloves to the oil and cook over medium heat for 3 to 4 minutes to infuse the oil.\n5. Remove and discard cinnamon stick and cloves.\n6. Add the remaining tablespoon of peppercorns (either whole or crushed, according to your taste) and the pureed tomatoes to the pan. Cook three minutes, stirring, then return cooked chicken to the pan. Toss the chicken in the sauce and cook until heated through, about three minutes. Taste and add salt as needed.\n7. Serve with basmati rice and garnish with cilantro leaves.",
            prepTime: "1hr20min",
            category: "Indian",
            imageURL: URL(fileURLWithPath: "in_masala")
        ),
        MenuItem(
            id:10,
            name:"Indian Lentil Dahl",
            description: "1. In a large saucepan, combine oil, onion and salt at medium-high heat. Cook until onion starts to brown, around 5 minutes or so. Add garlic, ginger and Garam Masala , cook until fragrant, about 1 minute.\n2. Add lentils, coconut milk and water. Bring to a boil, then reduce heat to low and simmer, partially covered until lentils are fully tender and broken down to an almost paste-like consistency, about 25-30 minutes.\n3. Add lime juice and cilantro. Check for seasoning. Serve (over rice if you like), topped with the diced tomatoes.",
            prepTime: "45min",
            category: "Indian",
            imageURL: URL(fileURLWithPath: "in_dahl")
        )
    ]
}
