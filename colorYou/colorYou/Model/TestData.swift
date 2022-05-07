//
//  TestData.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/05/03.
//

import Foundation
import SwiftUI

//뷰마다 스코어:1324 2314 4213 3142 2431 1234 4123
struct Score{
    var A : Int = 0
    var B : Int = 0
    var C : Int = 0
    var D : Int = 0
    
    mutating func addScore(select : String){
        switch select {
        case "A":
            A = A + 1
        case "B":
            B = B + 1
        case "C":
            C = C + 1
        case "D":
            D = D + 1 
        default:
            print("noting")
        }
    }
    
    mutating func resetScore(){
        A = 0
        B = 0
        C = 0
        D = 0
    }
    
    func returnResult()->String{
        let maxValue = [A,B,C,D].max()
        print(maxValue ?? 0)
        if maxValue == B{
            return "Blue"
        }
        else if maxValue == A{
            return "Gold"
        }
        else if maxValue == C{
            return "Green"
        }
        else if maxValue == D{
            return "Orange"
        }
        return "what"
    }
}


struct resultModel{
    var colorName: String
    var titleColor: Color
    var backgroundColor: Color
    var imageName : String
    var moto: String
    var selfSee1: String
    var selfSee2: String
    var selfSee3: String
    var selfSee4: String
    var otherSee1: String
    var otherSee2: String
    var otherSee3: String
    var otherSee4: String
    var brightenColor1 : String
    var brightenColor2 : String
    var brightenColor3 : String
    var brightenColor4 : String
    var totalContent1 : String
    var totalContent2 : String
    var totalContent3 : String
    var totalContent4 : String
    var totalContent5 : String
    
    init(userResult:String){
        switch userResult {
        case "Gold":
            colorName = "골드"
            titleColor = Color.init(red: 242/255, green: 184/255, blue: 7/255)
            backgroundColor = Color.init(red: 255/255, green: 231/255, blue: 162/255)
            imageName = "GoldCat"
            moto = "tradition, good order, and good work."
            selfSee1 = "- 안정적이다"
            selfSee2 = "- 아는게 힘이다"
            selfSee3 = "- 현실적이다"
            selfSee4 = "- 효율적이다"
            otherSee1 = "- 뻣뻣하다"
            otherSee2 = "- 지루하다"
            otherSee3 = "- 비판을 많이한다"
            otherSee4 = "- 독선적이다"
            brightenColor1 = "- 자신에 대해 확신을 가지세요"
            brightenColor2 = "- 자신이 컨트롤 할 수 있는 것에 집중하세요"
            brightenColor3 = "- 자신에게 휴식을 주세요"
            brightenColor4 = "- 참을성을 가지세요"
            totalContent1 = " 당신은 탄탄하고 전통적이며 열심히 일하고 생산적입니다. 일이 잘 풀릴 수 있도록 기술과 에너지를 쏟습니다. 순조롭게 일이 진행되는 것을 좋아합니다. 당신에게는 일과 관계 둘의 안정이 필요합니다."
            totalContent2 = " 여러가지 일들이 뒤죽박죽이 되어 떨어져버리기 쉬우므로, 모든 것을 함께 보존하기 위해 세심한 주의를 기울일 필요가 있습니다."
            totalContent3 = " 계획과 목록을 만들고 그것들을 완성합니다. 그룹활동을 할때 잘 협력합니다. 다른 사람들이 그룹활동에 참여하도록 도와주며 노력하지만 종종 대부분의 짐을 떠맡게 됩니다. 사람들은 당신에게 의지합니다."
            totalContent4 = " 높은 수준에 도달하려고 노력하는데, 그 수준에 충족하지 못하면 죄책감을 느낍니다. 하지만 당신은 여태 꽤 성공적이었고, 예전처럼 \"해냈다!\"라고 말합니다."
            totalContent5 = ""
        case "Blue":
            colorName = "블루"
            titleColor = Color.init(red: 15/255, green: 128/255, blue: 245/255)
            backgroundColor = Color.init(red: 171/255, green: 217/255, blue: 251/255)
            imageName = "BlueCat"
            moto = "CreateHarmony"
            selfSee1 = "- 굿 커뮤니케이터다"
            selfSee2 = "- 로맨틱하다"
            selfSee3 = "- 편안하다"
            selfSee4 = "- 예의바르다"
            otherSee1 = "- 너무 감정적이다"
            otherSee2 = "- 느끼하다"
            otherSee3 = "- 사람을 조종한다"
            otherSee4 = "- 말이 너무많다"
            brightenColor1 = "- 부정적인 감정을 받아들이는 법을 배우세요"
            brightenColor2 = "- 흘러가게 두세요"
            brightenColor3 = "- 경계선을 설정하세요"
            brightenColor4 = "- 자신을 돌보세요"
            totalContent1 = " 당신은 자신의 마음과 꿈으로 더 나은 세상을 만들기를 바랍니다. 기쁨과 고통을 모두 깊이 느낍니다. 사람과 자연에서 아름다움을 발견하는 것을 좋아합니다. 그리고 사람들과 다른 것들을 보살피며 그것들이 자라는 것을 보는 것을 좋아합니다. 낭만주의자입니다."
            totalContent2 = " 당신에게 개인적인 관계는 매우 중요합니다. 솔직한 공유와 진정한 의사소통은 인생에서 가장 중요한 것들 중 하나라고 생각합니다. 하지만 다른 사람들이 이기적이고 무관심할 때 함께 있는 것은 매우 힘듭니다."
            totalContent3 = " 항상 평화롭게 지내려고 노력합니다, 하지만 잘 지낼 수 없거나 그렇지 않은 사람들과 함께 있기보다는 혼자 있는 것이 더 나을수도 있습니다."
            totalContent4 = " 가끔 기분이 울적하고, 옛날의 감정과 경험들이 오랫동안 자신의 곁에 머무릅니다."
            totalContent5 = " 항상 사람들에게서 최고의 것을 찾습니다. 협동심과 호의를 중요시합니다. 또한 영적인 것에 관심이 있습니다. \"이해 없는 평화\"를 바랍니다."
        case "Green":
            colorName = "그린"
            titleColor = Color.init(red: 156/255, green: 220/255, blue: 40/255)
            backgroundColor = Color.init(red: 229/255, green: 247/255, blue: 191/255)
            imageName = "GreenCat"
            moto = "Figure It Out!"
            selfSee1 = "- 아는것이 많다"
            selfSee2 = "- 혁신적이다"
            selfSee3 = "- 독립적이다"
            selfSee4 = "- 위트있다"
            otherSee1 = "- 오만하다"
            otherSee2 = "- 별나다"
            otherSee3 = "- 비이냥거린다"
            otherSee4 = "- 감수성이 부족하다"
            brightenColor1 = "- 비판하는 것을 조절하세요"
            brightenColor2 = "- 당신의 몸상태에 주의를 기울이세요 :웃으세요!"
            brightenColor3 = "- 자신의 실수를 반기세요"
            brightenColor4 = "- 자신을 어떻게 바꿀 수 있는지 인식하세요"
            totalContent1 = " 당신은 문제를 해결하고 새로운 아이디어를 내는 것을 좋아합니다. 탐구하고, 배우고, 실험하고, 정보와 지식을 수집할 자유가 필요합니다. 또한 결정을 내리기 전에 생각하고 분석할 시간이 필요합니다."
            totalContent2 = " 사실을 알고 싶고 어떤 어리석은 짓도 참고 싶지 않습니다. 어떤 질문에도 가능한 답이 많이 있다고 생각합니다. 매우 궁금증이 많고, 이를 해결하기 위해서는 혼자 생각하는 시간이 필요합니다."
            totalContent3 = " 흥미있는 것들에 대해 배우는 것을 좋아하고, 많은 것들에 관심이 있습니다. 그러나 무엇을 해야 할지, 무엇을 생각해야 할지 지시받는 것을 좋아하지 않습니다."
            totalContent4 = " 자신이 권위를 인정하지 않는 한 권위를 좋아하거나 신뢰하지 않습니다. 그리고 같은 일을 반복하는 것을 좋아하지 않습니다. 다른 사람들이 디테일한 부분을 다루도록 맡기고 창조하고 나아가는 것을 좋아합니다."
            totalContent5 = " 감정이나 관계보다는 아이디어나 사물에 더 익숙합니다. 하지만 사람들이 자신의 특별한 공헌을 인정해주길 바랍니다. 감정을 강하게 느끼고 다른 사람들은 어떻게 느끼는지 신경 쓰이지만, 그것에 대해 너무 많이 말하고 싶지 않아합니다."
        case "Orange":
            colorName = "오렌지"
            titleColor = Color.init(red: 242/255, green: 116/255, blue: 5/255)
            backgroundColor = Color.init(red: 255/255, green: 205/255, blue: 166/255)
            imageName = "OrangeCat"
            moto = "Move it!"
            selfSee1 = "- 태평스럽다"
            selfSee2 = "- 과정을 즐긴다"
            selfSee3 = "- 멀티 플레이어다"
            selfSee4 = "- 즉흥적이다"
            otherSee1 = "- 참을성이 부족하다"
            otherSee2 = "- 무례하다"
            otherSee3 = "- 규칙을 무시한다"
            otherSee4 = "- 준비되지않아 보인다"
            brightenColor1 = "- 집중하세요"
            brightenColor2 = "- 다른 오렌지 사람들을 찾으세요"
            brightenColor3 = "- 자신에게 상을 주세요"
            brightenColor4 = "- 건강한 습관을 만드세요 : 행동이 충동적이게 되는것을 멀리하세요"
            totalContent1 = " 당신은 자유롭게 행동하고 싶어합니다. 그리고 일을 성사시키고 싶어합니다. 많은 것을 잘하는 것을 좋아합니다. 또한 다른 사람들과 경쟁하고 최선을 다하는 것을 좋아합니다. 이기는 게 제일 좋아! 라고 생각합니다"
            totalContent2 = " 사람들이 어떻게 하루 종일 앉아서 끝없이 말하고, 말하고, 말할 수 있는지 이해할 수 없습니다. 인생은 모험이고, 행동과 흥분은 인생의 향신료라 생각합니다. 당신은 움직이고, 웃고, 성취하고 싶습니다. 그렇기에 무언가를 하고 싶어하는 사람들과 함께 하고 싶어합니다."
            totalContent3 = " 충동적이고 충동적입니다. 너무 많은 계획, 진지함, 혹은 생각이 지금 사는 데 방해가 된다고 생각합니다! 자신의 기술, 창의력, 그리고 에너지로 인정 받고 싶어합니다. Live and learn. 우리는 서로 다른사람이 배운 것을 따라하면서 배웁니다. 다른 무엇이 중요하죠?"
            totalContent4 = ""
            totalContent5 = ""
        default:
            colorName = "블루"
            titleColor = Color.init(red: 15/255, green: 128/255, blue: 245/255)
            backgroundColor = Color.init(red: 171/255, green: 217/255, blue: 251/255)
            imageName = "BlueCat"
            moto = "CreateHarmony"
            selfSee1 = "- 굿 커뮤니케이터다"
            selfSee2 = "- 로맨틱하다"
            selfSee3 = "- 편안하다"
            selfSee4 = "- 예의바르다"
            otherSee1 = "- 너무 감정적이다"
            otherSee2 = "- 느끼하다"
            otherSee3 = "- 사람을 조종한다"
            otherSee4 = "- 말이 너무많다"
            brightenColor1 = "- 부정적인 감정을 받아들이는 법을 배우세요"
            brightenColor2 = "- 흘러가게 두세요"
            brightenColor3 = "- 경계선을 설정하세요"
            brightenColor4 = "- 자신을 돌보세요"
            totalContent1 = " 당신은 자신의 마음과 꿈으로 더 나은 세상을 만들기를 바랍니다. 기쁨과 고통을 모두 깊이 느낍니다. 사람과 자연에서 아름다움을 발견하는 것을 좋아합니다. 그리고 사람들과 다른 것들을 보살피며 그것들이 자라는 것을 보는 것을 좋아합니다. 낭만주의자입니다."
            totalContent2 = " 개인적인 관계는 매우 중요합니다. 솔직한 공유와 진정한 의사소통은 인생에서 가장 중요한 것들 중 하나라고 생각합니다. 하지만 다른 사람들이 이기적이고 무관심할 때 함께 있는 것은 매우 힘듭니다."
            totalContent3 = " 항상 평화롭게 지내려고 노력하지만, 잘 지낼 수 없거나 그렇지 않은 사람들과 함께 있기보다는 혼자 있는 것이 더 나을수도 있습니다."
            totalContent4 = " 가끔 기분이 울적하고, 옛날의 감정과 경험들이 오랫동안 자신의 곁에 머무릅니다."
            totalContent5 = " 항상 사람들에게서 최고의 것을 찾습니다. 협동심과 호의를 중요시합니다. 또한 영적인 것에 관심이 있습니다. \"이해 없는 평화\"를 바랍니다."
        }
    }
}

// resultModel.color > blue
// resultModel.moto >   run it!
// resultModel.content >ddjskdjsakdlsjadlkasjdlasdljs
