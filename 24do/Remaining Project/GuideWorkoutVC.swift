//
//  GuideWorkoutVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 23/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class GuideWorkoutVC: UIViewController {

    @IBOutlet weak var warmUpLabel: UILabel!
    @IBOutlet weak var stretchingLabel: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    
    @IBOutlet weak var workOutTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Guide Workout"
        warmUP()
        Stretching()
        StepsWotkout()
        WorkoutTime()
    }
    
    func warmUP()  {
        warmUpLabel.text = "* Most warm up don’t take very long, just two-three minutes, five minutes tops. To benefit us the most a warm-up should work the same muscles we will be engaging during the main workout - they should include lighter exercises or a toned down version of the training ahead. \n * The temperature of when and where you workout plays a difference. In winter our body keeps most of the blood flow away from our extremities so warming up will take longer. In summer with higher ambient temperatures, the body is already half-warmed up and our muscles are loose. Many Olympic athletes tend to ‘chase the sun’ for that reason training in Australia and California so they spend all year in a summer environment. \n * Tip: If you are short on time and you are doing a bodyweight workout, you can forgo a specific warm-up and do the first set of the circuit moving at a slower pace, jumping lower and moving slower in general turning the first set into a warm-up."
    }
    func Stretching()  {
        stretchingLabel.text = "Everyone can get flexible if they work at it. Some people have a natural gift for flexibility others have to struggle to gain every little bit but everyone can get there. It takes persistence and regular training and the muscles adapt and respond. \n * The best time to stretch is post-workout when our muscles are completely relaxed, thoroughly warmed up and capable of giving us the most stretch, easiest. When muscles are really well warmed up they exhibit a high degree of plasticity. That means that not only do they stretch but after stretching and cooling down they maintain an increased range of movement and display greater flexibility.\n  *This is the reason why everyone should stretch: range of movement. Whether you are a boxer or a ballet dancer your sport will necessitate your muscles performing by working through a range of motion. Muscles that are tight and constricted tend to work against each other to perform the move. That means that energy which should be used in the move itself is actually soaked up by fighting against the muscles themselves and the supporting muscle groups. This leeches away power."
        
    }
    
    func StepsWotkout()  {
        stepsLabel.text = "Step 1: Warm up \nStep 2: Choose a plan you want to workout (28 days of challenge or or Abs, Arm, Butt, Leg, Chest from Beginner to Advanced) \nStep 3: Stretching (Optional)"
        
    }
    func WorkoutTime()  {
        workOutTime.text = "1. Morning workout \n-Many people find morning workouts to be their preferred choice for a variety of reasons. One of the most common reasons cited is that when you exercise in the morning, you get your workout out of the way. Science also backs up morning workouts in some regards, as morning exercise tends to increase your energy for the rest of the day.\n-In fact, a morning workout is a lot like breakfast in that it gets your metabolism going. Simply put, you burn more calories all day long just from the sheer fact of exercising in the morning. A study conducted at Appalachian State University also found that morning workouts are preferable if you want a better night's rest. So, is it better to work out in the morning or night? One more reason to go with morning is that it's been shown that people who work out in the morning are overall more likely to be consistent with their workouts. So pack your breakfast in your meal management bag, and dig in post-morning workout session.\n-Morning workouts certainly have their benefits. But plenty of people like to exercise at night as well, and surely science backs that up to some degree too. The real factor to consider is that consistency is key, no matter when you choose to work out. But studies have shown that different fitness goals are better achieved at certain parts of the day, and this is where working out later in the day comes into play.\n 2. Afternoon and night workout\n-Strength and endurance are both higher in the afternoon, while the likelihood of injuries is decreased. Exercising when body temperature is lowest, which is typically later in the day, around 4 or 5 p.m., results in improved performance and increased power. At this time of day, muscles are more flexible since your body is more warmed up than it is in the morning. Your reaction time is likely to be quicker, while heart rate and blood pressure are low. Protein synthesis peaks at this time of day, as well. Based on this, intense workouts such as weight training or hard cardio should take place during the late afternoon or evening.\n-Not only that, but the calories provided by the small meals you have packed in your meal management bag are the perfect fuel for a nighttime workout. A study conducted at the Clinical Research Center of the University of Chicago found that those who hit the gym after work are more likely to achieve a higher degree of fitness than early bird exercisers. Blood samples showed that levels of certain endocrine hormones (cortisol and thyrotropin) significantly increased in those working out at night. Chalk this up as another reason to engage in more strenuous activity at night."
        
    }
    


}
