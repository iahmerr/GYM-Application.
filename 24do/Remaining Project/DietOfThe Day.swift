//
//  DietOfThe Day.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 24/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class DietOfThe_Day: UIViewController {

    var getData: Int!
    
    @IBOutlet weak var breakfastLabel: UILabel!
    @IBOutlet weak var snackLabel: UILabel!
    @IBOutlet weak var lunchLabel: UILabel!
    @IBOutlet weak var dinnerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Diet of the Day"
     setData()
        print("aya hai doosry main bc" , getData) 
        // Do any additional setup after loading the view.
    }
    let  day1 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda) \n -Smoothie (blend 1 cup frozen berries, 1/2 banana, and 8 ounces fat-free milk) or 0% fat fruit yogurt \n-Avocado and tomato salad", "cup sliced cucumber \n-2 Tbsp. of hummus" , "Carrot and pineapple salad (with lemon juice)\nAny lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper", "  1 avocado\n 2 cups of steamed snow peas\n2 cup vegetarian baked beans (soybean, lentils, black beans, kidney beans and some others) and 3 small boiled red potatoes topped with 1 teaspoon light margarine and a pinch of dill" ]
    let day2 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nEgg white omelet stuffed withgrilled vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\n1/2 cup berries of choice (blueberries, strawberries, raspberries, blackberries)" , "0% fatgreek yogurt" , "Oatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk\n1 apple \nSalad, 2 cups mixedgreens with 1 cup of other veggies, chopped, dressed with aged balsamic vinegar (sweet potatoes, yellow squash, red bell peppers, cucumbers, red cabbage, red onions), no creamy dressing!" , "Smoothie (blend 1 scoop vanilla protein powder, 1/2 cup frozen berries, 1/2 cup kale leaves, 1 cup almond milk) or 0% fat fruit yogurt \nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)" ]
    let day3 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda) \nOatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk \n1 banana","3 Tbsp. hummus \nA handful of raw pepitas or dry roasted pumpkin seeds " , "Wrap (a whole wheat tortilla with turkey, avocado, tomato, cucumber)\nSalad, 2 cups mixedgreens with 1 cup of other veggies, chopped, dressed with aged balsamic vinegar (sweet potatoes, yellow squash, red bell peppers, cucumbers, red cabbage, red onions), no creamy dressing!" , ",4 ounces steamed shrimp (You’d better remove the vein \n- the dark line along the top of the shrimp) or any other fish (halibut, oysters, wild salmon, scallops, light canned tuna, pacific cod, sardines, herrings, anchovies) with 1 baked potato topped with 3 tablespoons salsa (if desired, add a little black pepper)" ]
    let day4 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nHalf a cantaloupe with 1 cup of vanillagreek yogurt (fat free, no sugar added)\n Salad (combine 1 cup cheerios, 1/2 cup berries, 1 tablespoon slivered almonds and 8 ounces fat-free milk in a bowl)", "1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo)\n1 choc chip cookie dough brownie", "A big salad of baby spinach and other fresh veggies (sliced carrots, tomatoes, canned no-salt-added beans)\nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)" , "1 cup steamed zucchini \n3 small boiled red potatoes topped with 1 teaspoon light margarine and a pinch of dill\n1 cup mixed raw peppers (yellow & orange are sweetest)\nAny lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper" ]
    let day5 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n2 Tbsp. of peanut butter with 1 piece of whole-grain toast\n1 avocado", "1 healthy muffin\n0% fatgreek yogurt", "Oatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk\nQuesadilla (1 small whole wheat tortilla with 1/4 cup fat-free refried beans)\n10 cherry tomatoes", "3 cups steamed spinach\nGreek salad (tomatoes, cucumber, bell pepper, onion with feta cheese, olives, drizzle olive oil and vinegar over the salad)\nAny 4 ounces fish (bream, cod, perch, pollock, carp, whiting, mullet, pike, flounder, hake,grouper) or seafood (squids, crabs, shrimp), boiled orgrilled"
]
    let day6 = [ "1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda）\n3 scrambled eggs (no butter or oil, if desired, add a little black pepper )\n1 toast of wholemeal bread", "1/2 cup vanilla fat-free frozen yogurt topped with 1 cup berries", "1 veggie burger (a mini whole wheat pita with lettuce and salsa) or sandwich (2 slices of low-sodium, whole-grain bread with assorted veggies)\nAny lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper", "1 cup of steamed brown rice\n3 Tbsp. hummus\nVegetarian chili (fat-free low-sodium varieties, onion, tomatoes,green"]
    let day7 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nEgg white omelet stuffed withgrilled vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\n1/2 cup berries of choice (blueberries", "3 Tbsp. hummus/nSome nuts (any nuts with no-salted)", "Stir-fry (or stew, boil) tofu with vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\n1 cup of steamed brown rice\n1 apple\nSweet potato, bacon and egg salad", "Greek salad (tomatoes, cucumber, bell pepper, onion with feta cheese, olives, drizzle olive oil and vinegar over the salad)\nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)"
]
let day8 = ["1 cup of tea or black coffee without suga\n2 Tbsp. of peanut butter with 1 piece of whole-grain toast\nHot whole-grain cereal (oatmeal, cracked wheat, barley, polenta with no added sugar or salt)","1 largegrapefruit", "Egg white omelet stuffed withgrilled vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\n1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo) “\nSalad with assorted veggies (cabbage, arugula, spinach, Batavia lettuce, iceberg)", "1 cup baked acorn squash, mashed with a pinch of cinnamon\nChicken salad (shredded skinless chicken breast,grilled or boiled) with some fresh fruits (cherry tomatoes) or assorted veggies (cabbage, arugula, spinach, lettuce, iceberg, babygreens and sliced tomatoes)"
]
    let day9 = ["1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda）\nOmelet from three full eggs and low-fat cream or milk, with loaded vegetable\nSmoothie (blend 1 scoop vanilla protein powder, 1/2 cup frozen berries, 1/2 cup kale leaves, 1 cup almond milk) or 0% fat fruit yogurt", "1/2 cup vanilla fat-free frozen yogurt topped with 1 cup berries", "A big salad of baby spinach and other fresh veggies (sliced carrots, tomatoes, canned no-salt-added beans)\n1/2 cup vegetarian boiled beans (soybean, lentils, black beans, kidney beans and some others)\nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)" , "1 cup steamed zucchini\n3 small boiled red potatoes topped with 1 teaspoon light margarine and a pinch of dill\n1 cup mixed raw peppers (yellow & orange are sweetest)"
]
    let day10 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n1/2 cup quick-cooking oats with 3/4 cup fat-free milk, add 1/2 chopped apple (If desired, add 1 teaspoon honey and a pinch of cinnamon)\nSmoothie (blend 1 cup frozen berries, 1/2 banana, and 8 ounces fat-free milk) or 0% fat fruit yogurt" ," 1 cup sliced cucumber\n2 Tbsp. of hummus", "Any lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper" ,"2 cups of steamed snow peas\n1/2 cup vegetarian baked beans (soybean, lentils, black beans, kidney beans and some others) and 3 small boiled red potatoes topped with 1 teaspoon light margarine and a pinch of dill"

]
    
let day11 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n3 scrambled eggs (no butter or oil, if desired, add a little black pepper \nOatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk\n1 banana", "A handful of raw pepitas or dry roasted pumpkin seeds", "Wrap (a whole wheat tortilla with turkey, avocado, tomato, cucumber)\nSalad, 2 cups mixedgreens with 1 cup of other veggies, chopped, dressed with aged balsamic vinegar (sweet potatoes, yellow squash, red bell peppers, cucumbers, red cabbage, red onions), no creamy dressing!", "Sweet potato fries sauteed spinach and onions\n4 ounces steamed shrimp (You’d better remove the vein - the dark line along the top of the shrimp) or any other fish (halibut, oysters, wild salmon, scallops, light canned tuna, pacific cod, sardines, herrings, anchovies) with 1 baked potato topped with 3 tablespoons salsa (if desired, add a little black pepper)"]
    let day12 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n1 avocado" , "Some nuts (any nuts with no-salted)\n2 small boxes of raisins", "1 veggie burger (a mini whole wheat pita with lettuce and salsa) or sandwich (2 slices of low-sodium, whole-grain bread with assorted veggies)\n1.5 oz. boiled sesame buckwheat noodles with 1 Tbs. low fat peanut sauce\n10 cherry tomatoes", "3 cups steamed spinach\nGreek salad (tomatoes, cucumber, bell pepper, onion with feta cheese, olives, drizzle olive oil and vinegar over the salad)\n”Spinach, mushroom, and boiled egg salad with 2 oz turkey breast"]
    let day13 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nSalad (combine 1 cup cheerios, 1/2 cup berries, 1 tablespoon slivered almonds and 8 ounces fat-free milk in a bowl)", "A handful of raw pepitas or dry roasted pumpkin seeds", "Half a cantaloupe with 1 cup of vanillagreek yogurt (fat free, no sugar added)\n2 cups of steamed broccoli\nAny lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper", "1.5 oz. boiled sesame buckwheat noodles with 1 Tbs. low fat peanut sauce \nVegetarian chili (fat-free low-sodium varieties, onion, tomatoes,green bell peppers, beans, carrots, mushrooms)"
]
    let day14 = [
    "1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda）\n1/2 cup quick-cooking oats with 3/4 cup fat-free milk, add 1/2 chopped apple (If desired, add 1 teaspoon honey and a pinch of cinnamon)\n1 banana", "1 cup sliced cucumber\n0% fatgreek yogurt", "1 cup of steamed brown rice\nSweet potato fries sauteed spinach and onions\nBaked potato with 2 tablespoons fat-free sour cream and a sprinkling of chives or scallions\nChicken spinach (grilled or boiled, or any other lean meats, such as beef, veal, rabbit, turkey)", "1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo)\n4 ounces steamed shrimp (You’d better remove the vein - the dark line along the top of the shrimp) or any other fish (halibut, oysters, wild salmon, scallops, light canned tuna, pacific cod, sardines, herrings, anchovies) with 1 baked potato topped with 3 tablespoons salsa (if desired, add a little black pepper)"
]
    let day15 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n2 Tbsp. of peanut butter with 1 piece of whole-grain toast\nHot whole-grain cereal (oatmeal, cracked wheat, barley, polenta with no added sugar or salt)", "1 largegrapefruit", "1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo)\nSalad with assorted veggies (cabbage, arugula, spinach, Batavia lettuce, iceberg)", "1 cup baked acorn squash, mashed with a pinch of cinnamon\nChicken salad (shredded skinless chicken breast,grilled or boiled) with some fresh fruits (cherry tomatoes) or assorted veggies (cabbage, arugula, spinach, lettuce, iceberg, babygreens and sliced tomatoes)"]
    let day16 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)”\nEgg white omelet stuffed withgrilled vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)", "2 Tbsp. of hummus", "Stir-fry (or stew, boil) tofu with vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\nA big salad of baby spinach and other fresh veggies (sliced carrots, tomatoes, canned no-salt-added beans)", "Vegetable soup (any vegetables with no-salt-added)\nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)"]
    let day17 = ["1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda）\n1 toast of wholemeal bread\n3 small boiled red potatoes topped with 1 teaspoon light margarine and a pinch of dill", "2 small boxes of raisins" , "1 cup of steamed brown rice\nHalf a cantaloupe with 1 cup of vanillagreek yogurt (fat free, no sugar added)", "Salad, 2 cups mixedgreens with 1 cup of other veggies, chopped, dressed with aged balsamic vinegar (sweet potatoes, yellow squash, red bell peppers, cucumbers, red cabbage, red onions), no creamy dressing!\nAny lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper"
]
    let day18 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nA big salad of baby spinach and other fresh veggies (sliced carrots, tomatoes, canned no-salt-added beans)", "2 Tbsp. of hummus", "Egg white omelet stuffed withgrilled vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\nSmoothie (blend 1 scoop vanilla protein powder, 1/2 cup frozen berries, 1/2 cup kale leaves, 1 cup almond milk) or 0% fat fruit yogurt", "Spinach, mushroom, and boiled egg salad with 2 oz turkey breast"]
    let day19 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nOmelet from three full eggs and low-fat cream or milk, with loaded vegetable" , "Smoothie (blend 1 cup frozen berries, 1/2 banana, and 8 ounces fat-free milk) or 0% fat fruit yogurt", "1/2 cup quick-cooking oats with 3/4 cup fat-free milk, add 1/2 chopped apple (If desired, add 1 teaspoon honey and a pinch of cinnamon)\nWrap (a whole wheat tortilla with turkey, avocado, tomato, cucumber)", "Baked potato with 2 tablespoons fat-free sour cream and a sprinkling of chives or scallions\nChicken salad (shredded skinless chicken breast,grilled or boiled) with some fresh fruits (cherry tomatoes) or assorted veggies (cabbage, arugula, spinach, lettuce, iceberg, babygreens and sliced tomatoes)"]
    let day20 = [ "1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n2 Tbsp. of peanut butter with 1 piece of whole-grain toast\nAvocado and tomato salad", "1/2 cup berries of choice (blueberries, strawberries, raspberries, blackberries)", "Oatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk\n1/2 cup vegetarian boiled beans (soybean, lentils, black beans, kidney beans and some others)\nChicken spinach (grilled or boiled, or any other lean meats, such as beef, veal, rabbit, turkey)", "1 apple\n3 Tbsp. hummus\nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)"]
    let day21 = ["1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda）\n1 cup of steamed fresh vegetables (asparagus, broccoli, cauliflower) with lemon juice and sautéedgarlic", "1 choc chip cookie dough brownie", "1/2 cup quick-cooking oats with 3/4 cup fat-free milk, add 1/2 chopped apple (If desired, add 1 teaspoon honey and a pinch of cinnamon)\n2 cups of steamed broccoli\n3 ounces broiled orgrilled flank steak","10 baby carrots\n1/2 cup vegetarian baked beans (soybean, lentils, black beans, kidney beans and some others) and 3 small boiled red potatoes topped with 1 teaspoon light margarine and a pinch of dill" ]
    let day22 = [ "1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n3 scrambled eggs (no butter or oil, if desired, add a little black pepper )\nOatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk\n1 banana","A handful of raw pepitas or dry roasted pumpkin seeds", "Wrap (a whole wheat tortilla with turkey, avocado, tomato, cucumber)\nSalad, 2 cups mixedgreens with 1 cup of other veggies, chopped, dressed with aged balsamic vinegar (sweet potatoes, yellow squash, red bell peppers, cucumbers, red cabbage, red onions), no creamy dressing!", "Sweet potato fries sauteed spinach and onions\n4 ounces steamed shrimp (You’d better remove the vein - the dark line along the top of the shrimp) or any other fish (halibut, oysters, wild salmon, scallops, light canned tuna, pacific cod, sardines, herrings, anchovies) with 1 baked potato topped with 3 tablespoons salsa (if desired, add a little black pepper)"]
    let day23 = ["1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda\n1/2 cup quick-cooking oats with 3/4 cup fat-free milk, add 1/2 chopped apple (If desired, add 1 teaspoon honey and a pinch of cinnamon)\n1 banana", "1 cup sliced cucumber\n0% fatgreek yogurt", "1 cup of steamed brown rice\nSweet potato fries sauteed spinach and onions\nBaked potato with 2 \nChicken spinach (grilled or boiled, or any other lean meats, such as beef, veal, rabbit, turkey)", "1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo) \n 4 ounces steamed shrimp (You’d better remove the vein - the dark line along the top of the shrimp) or any other fish (halibut, oysters, wild salmon, scallops, light canned tuna, pacific cod, sardines, herrings, anchovies) with 1 baked potato topped with 3 tablespoons salsa (if desired, add a little black pepper)"]
    let day24 = ["1 cup of tea or black coffee without suga\n1 avocado", "Some nuts (any nuts with no-salted)\n2 small boxes of raisins", "1 veggie burger (a mini whole wheat pita with lettuce and salsa) or sandwich (2 slices of low-sodium, whole-grain bread with assorted veggies)\n1.5 oz. boiled sesame buckwheat noodles with 1 Tbs. low fat peanut sauce \n10 cherry tomatoes", "3 cups steamed spinach\nGreek salad (tomatoes, cucumber, bell pepper, onion with feta cheese, olives, drizzle olive oil and vinegar over the salad)\nSpinach, mushroom, and boiled egg salad with 2 oz turkey breast"]
    let day25 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\nHalf a cantaloupe with 1 cup of vanillagreek yogurt (fat free, no sugar added)\nSalad (combine 1 cup cheerios, 1/2 cup berries, 1 tablespoon slivered almonds and 8 ounces fat-free milk in a bowl)", "A handful of raw pepitas or dry roasted pumpkin seeds", "A handful of raw pepitas or dry roasted pumpkin seeds" , "Sweet potato, bacon and egg salad/nAny lean meatsgrilled or boiled (beef, chicken breast, pork, lamb, bacon ) with onions,garlic, broccoli, and bell pepper", "Oatmeal porridge with 1/2 cup quick-cooking oats and 3/4 cup fat-free milk\nVegetarian chili (fat-free low-sodium varieties, onion, tomatoes,green bell peppers, beans, carrots, mushrooms)"]
    let day26 = ["1 cup of tea or hot cocoa (If desired, mix nonfat milk or soymilk, 1 tablespoon cocoa powder, and splenda）\n1/2 cup quick-cooking oats with 3/4 cup fat-free milk, add 1/2 chopped apple (If desired, add 1 teaspoon honey and a pinch of cinnamon)\n1 banana","1 cup sliced cucumber\n0% fatgreek yogurt", "1 cup of steamed brown rice\nSweet potato fries sauteed spinach and onions\nBaked potato with 2 tablespoons fat-free sour cream and a sprinkling of chives or scallions\nChicken spinach (grilled or boiled, or any other lean meats, such as beef, veal, rabbit, turkey)", "1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo)\n4 ounces steamed shrimp (You’d better remove the vein - the dark line along the top of the shrimp) or any other fish (halibut, oysters, wild salmon, scallops, light canned tuna, pacific cod, sardines, herrings, anchovies) with 1 baked potato topped with 3 tablespoons salsa (if desired, add a little black pepper)"]
    let day27 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)\n2 Tbsp. of peanut butter with 1 piece of whole-grain toast\nHot whole-grain cereal (oatmeal, cracked wheat, barley, polenta with no added sugar or salt)\n1 largegrapefruit", "1 apple\n10 baby carrots", "\n1 serving fruit (apple, pear, banana, orange,grapefruit, pineapple, peach, melon, apricot, pomelo)\nSalad with assorted veggies (cabbage, arugula, spinach, Batavia lettuce, iceberg)", "1 cup baked acorn squash, mashed with a pinch of cinnamon\nChicken salad (shredded skinless chicken breast,grilled or boiled) with some fresh fruits (cherry tomatoes) or assorted veggies (cabbage, arugula, spinach, lettuce, iceberg, babygreens and sliced tomatoes)"]
    let day28 = ["1 cup of tea or black coffee without sugar and milk (If desired, add a little nonfat milk or soymilk and splenda)”\nEgg white omelet stuffed withgrilled vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)" , "2 Tbsp. of hummus" , "Stir-fry (or stew, boil) tofu with vegetables (onions, carrot,green bell pepper, broccoli, cauliflower, mushrooms)\nA big salad of baby spinach and other fresh veggies (sliced carrots, tomatoes, canned no-salt-added beans)" , "Vegetable soup (any vegetables with no-salt-added)\nSandwich of roasted turkey breast with 2 slices of low-sodium, whole-grain bread with assorted veggies (babygreens and sliced tomatoes)"]
    
    func setData()  {
        if getData == 1 {
            breakfastLabel.text = day1[0]
            snackLabel.text = day1[1]
            lunchLabel.text = day1[2]
            dinnerLabel.text = day1[3]
        }
        else if getData == 2 {
            breakfastLabel.text = day2[0]
                       snackLabel.text = day2[1]
                       lunchLabel.text = day2[2]
                       dinnerLabel.text = day2[3]
        }
        else if getData == 3 {
                  breakfastLabel.text = day3[0]
                             snackLabel.text = day3[1]
                             lunchLabel.text = day3[2]
                             dinnerLabel.text = day3[3]
              }
        else if getData == 4 {
                  breakfastLabel.text = day4[0]
                             snackLabel.text = day4[1]
                             lunchLabel.text = day4[2]
                             dinnerLabel.text = day4[3]
              }
        else if getData == 5 {
                        breakfastLabel.text = day5[0]
                                   snackLabel.text = day5[1]
                                   lunchLabel.text = day5[2]
                                   dinnerLabel.text = day5[3]
                    }
        else if getData == 6 {
                              breakfastLabel.text = day6[0]
                                         snackLabel.text =  day6[1]
                                         lunchLabel.text =  day6[2]
                                         dinnerLabel.text = day6[3]
                          }
        else if getData == 7 {
                  breakfastLabel.text = day7[0]
                             snackLabel.text =  day7[1]
                             lunchLabel.text =  day7[2]
                             dinnerLabel.text = day7[3]
              }
        else if getData == 8 {
                        breakfastLabel.text = day8[0]
                             snackLabel.text =  day8[1]
                             lunchLabel.text =  day8[2]
                             dinnerLabel.text = day8[3]
              }
        else if getData == 9 {
                  breakfastLabel.text = day9[0]
                             snackLabel.text = day9[1]
                             lunchLabel.text = day9[2]
                             dinnerLabel.text = day9[3]
              }
        else if getData == 10 {
                  breakfastLabel.text = day10[0]
                             snackLabel.text = day10[1]
                             lunchLabel.text = day10[2]
                             dinnerLabel.text = day10[3]
              }
        else if getData == 11 {
                        breakfastLabel.text = day11[0]
                                   snackLabel.text = day11[1]
                                   lunchLabel.text = day11[2]
                                   dinnerLabel.text = day11[3]
                    }
        else if getData == 12 {
                  breakfastLabel.text = day12[0]
                             snackLabel.text = day12[1]
                             lunchLabel.text = day12[2]
                             dinnerLabel.text = day12[3]
              }
        else if getData == 13 {
                  breakfastLabel.text = day13[0]
                             snackLabel.text = day13[1]
                             lunchLabel.text = day13[2]
                             dinnerLabel.text = day13[3]
              }
        else if getData == 14 {
                  breakfastLabel.text = day14[0]
                             snackLabel.text = day14[1]
                             lunchLabel.text = day14[2]
                             dinnerLabel.text = day14[3]
              }
        else if getData == 15 {
                  breakfastLabel.text = day15[0]
                             snackLabel.text = day15[1]
                             lunchLabel.text = day15[2]
                             dinnerLabel.text = day15[3]
              }
        else if getData == 16 {
                  breakfastLabel.text = day16[0]
                             snackLabel.text = day16[1]
                             lunchLabel.text = day16[2]
                             dinnerLabel.text = day16[3]
              }
        else if getData == 17 {
                  breakfastLabel.text = day17[0]
                             snackLabel.text = day17[1]
                             lunchLabel.text = day17[2]
                             dinnerLabel.text = day17[3]
              }
        else if getData == 18 {
                  breakfastLabel.text = day18[0]
                             snackLabel.text = day18[1]
                             lunchLabel.text = day18[2]
                             dinnerLabel.text = day18[3]
              }
        else if getData == 19 {
                  breakfastLabel.text = day19[0]
                             snackLabel.text = day19[1]
                             lunchLabel.text = day19[2]
                             dinnerLabel.text = day19[3]
              }
        else if getData == 20 {
                  breakfastLabel.text = day20[0]
                             snackLabel.text = day20[1]
                             lunchLabel.text = day20[2]
                             dinnerLabel.text = day20[3]
              }
        else if getData == 21 {
                  breakfastLabel.text = day21[0]
                             snackLabel.text = day21[1]
                             lunchLabel.text = day21[2]
                             dinnerLabel.text = day21[3]
              }
        else if getData == 22 {
                  breakfastLabel.text = day22[0]
                             snackLabel.text = day22[1]
                             lunchLabel.text = day22[2]
                             dinnerLabel.text = day22[3]
              }
        else if getData == 23 {
                  breakfastLabel.text = day23[0]
                             snackLabel.text = day23[1]
                             lunchLabel.text = day23[2]
                             dinnerLabel.text = day23[3]
              }
        else if getData == 24 {
                  breakfastLabel.text = day24[0]
                             snackLabel.text = day24[1]
                             lunchLabel.text = day24[2]
                             dinnerLabel.text = day24[3]
              }
        else if getData == 25 {
                  breakfastLabel.text = day25[0]
                             snackLabel.text = day25[1]
                             lunchLabel.text = day25[2]
                             dinnerLabel.text = day25[3]
              }
        else if getData == 26 {
                  breakfastLabel.text = day26[0]
                             snackLabel.text = day26[1]
                             lunchLabel.text = day26[2]
                             dinnerLabel.text = day26[3]
              }
        else if getData == 27 {
                  breakfastLabel.text = day27[0]
                             snackLabel.text = day27[1]
                             lunchLabel.text = day27[2]
                             dinnerLabel.text = day27[3]
              }
        else if getData == 28 {
                        breakfastLabel.text = day28[0]
                                   snackLabel.text = day28[1]
                                   lunchLabel.text = day28[2]
                                   dinnerLabel.text = day28[3]
                    }
        
        
    }
    
 

}


