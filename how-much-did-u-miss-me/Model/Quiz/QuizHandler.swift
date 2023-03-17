//
//  QuizHandler.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 15/03/2023.
//

import Foundation

struct QuizHandler {
    var quiz = [
        Question(
            scenario: "Your partner receives an unexpected invitation to a karaoke night from a close friend who's visiting from out of town. Your partner has been feeling exhausted after a long week at work and had been looking forward to a quiet night at home.",
            question: "What would your partner most likely do in this situation?",
            options: ["A) Accept the invitation and go to karaoke night, despite their exhaustion", "B) Turn down the invitation, explaining they need a quiet night at home", "C) Accept the invitation but leave early to get some rest", "D) Suggest rescheduling the karaoke night to another day"],
            answer: "D"
        ),
        Question(
            scenario: "A valuable package your partner has been eagerly awaiting is mistakenly delivered to a neighbor's house while your partner is away. The neighbor, unaware of the mistake, opens the package, and realizes it's not theirs.",
            question: "How would your partner react to the neighbor opening their package?",
            options: ["A) Be understanding, as it was an honest mistake", "B) Feel upset but not confront the neighbor", "C) Confront the neighbor about the issue, seeking an explanation", "D) Report the incident to the delivery company"],
            answer: "D"
        ),
        Question(
            scenario: "Your partner takes you to a highly recommended restaurant for a special date night. Upon arrival, they realize they've accidentally booked a table for the wrong night, and the restaurant is fully booked.",
            question: "How would your partner handle the situation at the restaurant?",
            options: ["A) Apologize and try to find another restaurant nearby", "B) Insist on getting a table, hoping the restaurant can accommodate", "C) Attempt to negotiate with the restaurant staff for a table", "D) Cancel the date night altogether and head back home"],
            answer: "C"
        ),
        Question(
            scenario: "You and your partner are at the airport, waiting to board your flight for a long-awaited vacation. An announcement is made that your flight has been delayed for several hours due to unforeseen circumstances.",
            question: "How would your partner react to the flight delay?",
            options: ["A) Stay calm and find ways to pass the time at the airport", "B) Get frustrated and complain to the airline staff", "C) Feel anxious about the possible impact on your vacation plans", "D) Look for alternative flights or transportation options"],
            answer: "A"
        ),
        Question(
            scenario: "As a fun surprise, you've booked a couples' art class for you and your partner. The class turns out to be more advanced than you'd anticipated, and your partner struggles with the techniques being taught.",
            question: "How would your partner handle the challenging art class?",
            options: ["A) Laugh it off and enjoy the experience despite the difficulties", "B) Feel embarrassed and want to leave the class early", "C) Become determined to master the techniques, even if it takes time", "D) Lose interest and focus on helping you with your artwork"],
            answer: "C"
        ),
        Question(
            scenario: "Your partner accidentally forgets an important date, such as your anniversary, and doesn't realize their mistake until the day has passed.",
            question: "How would your partner make up for forgetting the important date?",
            options: ["A) Plan a surprise celebration to make up for the mistake", "B) Apologize sincerely and promise to remember in the future", "C) Buy a thoughtful gift to show their remorse", "D) Act as if nothing happened and hope you don't bring it up"],
            answer: "A"
        ),
        Question(
            scenario: "Your partner is about to meet your parents for the first time, and they're feeling a mix of excitement and nervousness. Your parents have specific interests and opinions that your partner is not familiar with.",
            question: "How would your partner prepare for the meeting with your parents?",
            options: ["A) Do extensive research on your parents' interests to impress them", "B) Ask you for advice on how to approach the meeting", "C) Rely on their natural charm and hope for the best", "D) Focus on finding common ground during the conversation"],
            answer: "D"
        ),
        Question(
            scenario: "You and your partner have a disagreement about a significant aspect of your future together, such as where to live or when to start a family.",
            question: "How would your partner handle the disagreement on future plans?",
            options: ["A) Be open to a compromise that works for both of you", "B) Insist on their preferred plan without considering alternatives", "C) Take time to reflect and revisit the discussion later", "D) Avoid the topic altogether to prevent further conflict"],
            answer: "A"
        ),
        Question(
            scenario: "Your partner receives an opportunity to pursue a personal or professional goal, but it would require them to be away from you for an extended period.",
            question: "How would your partner approach the decision to pursue their goal?",
            options: ["A) Discuss the opportunity with you and seek your input", "B) Decide to pursue the goal and hope you'll be supportive", "C) Decline the opportunity in order to prioritize your relationship", "D) Accept the opportunity but try to find ways to minimize the impact on your relationship"],
            answer: "A"
        ),
        Question(
            scenario: "You and your partner are going through a stressful period due to external factors, such as work or family issues, which is affecting your relationship.",
            question: "How would your partner cope with the stress in the relationship?",
            options: ["A) Communicate openly about their feelings and seek solutions together", "B) Withdraw and try to deal with their stress independently", "C) Focus on self-care and encourage you to do the same", "D) Look for distractions, such as new hobbies or social activities"],
            answer: "A"
        ),
        Question(
            scenario: "You and your partner have finally managed to set aside time for a vacation together. However, you prefer a relaxing beach holiday, while your partner is more interested in an adventurous mountain escape.",
            question: "How would your partner approach the vacation planning given the differing preferences?",
            options: ["A) Insist on their preferred choice and try to convince you", "B) Compromise and look for a destination that offers both experiences", "C) Agree to your preference this time and plan their choice for the next vacation", "D) Suggest taking separate vacations to fulfill individual desires"],
            answer: "B"
        ),
        Question(
            scenario: "Your partner's close friends from college plan a surprise visit and stay at your home for a weekend. Coincidentally, you've been going through a stressful time at work and were hoping to use the weekend to relax and recharge.",
            question: "How would your partner handle this situation?",
            options: ["A) Welcome their friends and expect you to join in the fun", "B) Inform their friends about your situation and reschedule the visit", "C) Suggest their friends stay at a nearby hotel to give you some space", "D) Try to balance time between you and their friends during the weekend"],
            answer: "D"
        ),
        Question(
            scenario: "Your partner is offered a fantastic career opportunity that would require moving to a different country for a year. The move would significantly impact both your professional and personal lives.",
            question: "What would your partner most likely do in this situation?",
            options: ["A) Accept the opportunity without discussing it with you", "B) Turn down the opportunity to avoid disrupting your lives", "C) Have an open conversation with you about the pros and cons", "D) Accept the opportunity and try to make long-distance work for a year"],
            answer: "C"
        ),
        Question(
            scenario: "During the holiday season, both of your families have scheduled gatherings on the same day. Your partner's family lives a few hours away, while your family lives in the same city.",
            question: "How would your partner handle the conflicting family gatherings?",
            options: ["A) Prioritize their own family's gathering and ask you to join them", "B) Split the day between both gatherings, even if it means extra travel", "C) Attend their family's gathering and encourage you to attend yours", "D) Suggest alternating family gatherings each year to be fair"],
            answer: "B"
        ),
        Question(
            scenario: "You and your partner are considering buying a new car. Your partner has their heart set on a specific make and model, but you believe it's too expensive and impractical for your needs.",
            question: "How would your partner handle this disagreement on the major purchase?",
            options: ["A) Insist on buying the car they want, regardless of your concerns", "B) Try to find a more affordable alternative that still meets their preferences", "C) Compromise on a car that suits both of your needs and budgets", "D) Postpone the purchase and revisit the discussion later"],
            answer: "A"
        ),
        Question(
        scenario: "Your partner's company is organizing a charity event that involves a day of volunteering. Your partner is given the option to participate or not.",
        question: "What would your partner choose to do in this situation?",
        options: ["A) Eagerly sign up to volunteer at the charity event", "B) Politely decline participation due to personal reasons", "C) Agree to participate only if their close colleagues are also joining", "D) Choose to make a financial donation instead of volunteering their time"],
        answer: "C"
        ),
        Question(
        scenario: "Your partner and their friends are planning a movie night, and there's a debate on which genre to watch. Your partner has a favorite genre, but it's not popular among the group.",
        question: "How would your partner handle this movie genre debate?",
        options: ["A) Insist on watching their favorite genre", "B) Compromise and suggest watching two movies, including their favorite", "C) Give in to the group's preference without arguing", "D) Suggest watching a movie that combines multiple genres"],
        answer: "D"
        ),
        Question(
        scenario: "Your partner is considering adopting a pet and has a preference for a specific breed or species. However, they learn that there's a high-maintenance pet in need of a home.",
        question: "What would your partner do in this situation?",
        options: ["A) Adopt their preferred breed or species without considering the needy pet", "B) Adopt the high-maintenance pet, despite it not being their first choice", "C) Research more about the high-maintenance pet before making a decision", "D) Decide against adopting any pet due to the complications"],
        answer: "C"
        ),
        Question(
        scenario: "Your partner is tasked with planning a surprise party for a mutual friend. They have some ideas, but they're not sure if the friend would enjoy them.",
        question: "How would your partner approach the surprise party planning?",
        options: ["A) Stick to their ideas, believing the friend will enjoy them", "B) Seek your input and advice on the party plans", "C) Ask the friend's other close friends for suggestions", "D) Opt for a low-key gathering to avoid potential disappointment"],
        answer: "C"
        ),
        Question(
        scenario: "Your partner has some free time and wants to explore a new hobby. They have several interests but can only choose one to start with.",
        question: "Which hobby would your partner most likely choose?",
        options: ["A) A creative hobby, such as painting or photography", "B) A physical hobby, like hiking or dancing", "C) A social hobby, such as joining a club or taking a group class", "D) A solitary hobby, like reading or gardening"],
        answer: "B"
        ),
        Question(
        scenario: "Your partner has a co-worker who is challenging to work with due to their attitude and work habits.",
        question: "How would your partner handle the difficult co-worker?",
        options: ["A) Confront the co-worker directly and discuss the issues", "B) Complain to their manager or HR about the co-worker", "C) Try to work around the co-worker and avoid confrontation", "D) Offer assistance and support in hopes of improving the relationship"],
        answer: "D"
        ),
        Question(
        scenario: "Your partner is planning a vacation and wants to choose a destination that offers a mix of relaxation and adventure.",
        question: "What type of destination would your partner most likely select?",
        options: ["A) A tropical beach with opportunities for water sports", "B) A bustling city with a mix of cultural and outdoor activities", "C) A mountain retreat with opportunities for hiking and spa treatments", "D) A countryside location with quaint villages and scenic trails"],
        answer: "A"
        ),
        Question(
        scenario: "Your partner has been having a disagreement with a neighbor over a tree that is growing across the property line. The neighbor wants the tree removed, while your partner prefers to keep it. The situation has started to become tense between the two parties.",
        question: "How would your partner handle this neighborhood dispute?",
        options: ["A) Continue to argue for keeping the tree", "B) Seek a compromise, such as trimming the tree or sharing the cost of maintenance", "C) Give in to the neighbor's request and remove the tree to keep the peace", "D) Involve a mediator or legal professional to resolve the issue fairly"],
        answer: "B"
        ),
        Question(
        scenario: "Your partner has spent weeks planning a surprise birthday party for you, inviting friends and family from out of town. However, just before the party, there's a major storm that causes travel disruptions and makes it impossible for guests to attend.",
        question: "How would your partner react to this last-minute party cancellation?",
        options: ["A) Insist on proceeding with the party despite the challenges", "B) Cancel the party and plan a smaller, more intimate celebration", "C) Postpone the party until a later date when guests can attend", "D) Quickly adapt and organize a virtual party for everyone to join remotely"],
        answer: "A"
        ),
        Question(
        scenario: "Your partner is offered a promotion at work that comes with increased responsibilities and a higher salary. However, it also requires longer hours and more frequent travel, which could impact your relationship and home life.",
        question: "What would your partner do in this situation?",
        options: ["A) Accept the promotion", "B) Decline the promotion to preserve the balance in your current lifestyle", "C) Discuss the promotion with you and weigh the pros and cons together", "D) Accept the promotion and work on finding ways to balance their new role and personal life"],
        answer: "C"
        ),
        Question(
        scenario: "While on vacation with you, your partner suddenly falls ill and requires medical attention. The illness isn't life-threatening, but it will force your partner to stay in bed and rest for several days, affecting your vacation plans.",
        question: "How would your partner handle this sudden illness during the vacation?",
        options: ["A) Insist on continuing with the planned activities, despite their health", "B) Encourage you to go on planned excursions without them while they rest", "C) Focus on their recovery and suggest rescheduling the trip for a later date", "D) Re-evaluate the vacation plans and come up with alternative, low-key activities"],
        answer: "A"
        ),
        Question(
        scenario: "Your partner has been volunteering at a local organization for years, but recently, they've been feeling overwhelmed by their commitments. They're now faced with the decision of whether to continue volunteering or take a step back.",
        question: "How would your partner handle this volunteering dilemma?",
        options: ["A) Maintain their current level of involvement, despite feeling overwhelmed", "B) Resign from the organization entirely to focus on other priorities", "C) Reduce their volunteering hours and discuss the situation with the organization", "D) Seek a temporary leave of absence to reevaluate their commitment and priorities"],
        answer: "C"
        )
    ]
    
    var currentQuestionIndex = 0
    var score = 0

    mutating func startQuiz() {
        quiz.shuffle()
        currentQuestionIndex = 0
        score = 0
    }
    
    func getCurrentQuestion() -> Question {
        return quiz[currentQuestionIndex]
    }
    
    mutating func answerSelected(_ answer: String) -> Bool {
        let correctAnswer = quiz[currentQuestionIndex].answer
        let isCorrect = answer == correctAnswer
        
        if isCorrect {
            score += 1
        }
        
        return isCorrect
    }
    
    mutating func moveToNextQuestion() {
        currentQuestionIndex += 1
    }
    
    func hasMoreQuestions() -> Bool {
        return currentQuestionIndex < 10
    }
    
    func getPercentageScore() -> Double {
        return (Double(score) / 5.0) * 100
    }
    
    func getMessageForScore(_ score: Int) -> String {
        let messages = [
            "Your love is like a black hole - it's there, but no one can see it!",
            "You'd have a better chance at understanding string theory than your partner.",
            "Your love story is a Shakespearean tragedy in the making.",
            "If your love life were a sitcom, it'd be 'How I Barely Knew Your Partner'.",
            "Your love is like Schrödinger's cat - both alive and dead, but we're not sure which.",
            "Your love has as much depth as a puddle in the Sahara Desert.",
            "You're the star of a love story that's more confusing than Inception.",
            "Your partner is like a jigsaw puzzle, and you're still trying to find the edge pieces.",
            "You're navigating the maze of love, but you've barely reached the halfway point.",
            "You've cracked the love code! Now, let's see if you can sustain it."
        ]

        let index = Int((Double(score) / 100.0) * Double(messages.count))
        return messages[min(index, messages.count - 1)]
    }
}
