//
//  resultView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct resultView: View {
    @Binding var gotostartView: Bool
    var body: some View {
        ScrollView{
            VStack{
                Text("\"고반\"의 컬러는")
                    .font(.title)
                    .frame(maxWidth:.infinity,alignment: .trailing)
                    .padding(EdgeInsets(top: 32, leading: 0, bottom: 1, trailing: 67))
                HStack{
                    Text("블루")
                        .font(Font.system(size: 45))
                        .foregroundColor(Color.init(red: 15/255, green: 128/255, blue: 245/255))
                        .fontWeight(.bold)
                    Text("입니다")
                        .font(.largeTitle)
                }
                .frame(maxWidth:.infinity,alignment: .trailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 37))
                Image("BlueCat")
                    .resizable()
                    .frame(width: 320, height: 320)
                    .scaledToFit()
                Text("나의 좌우명은?")
                    .font(.title3)
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .padding(EdgeInsets(top: 30, leading: 37, bottom: 20, trailing: 0))
                Text("\"Create Harmony\"")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 326, height: 91)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 2)
                            .shadow(radius: 9)
                        )
                    .foregroundColor(Color.init(red: 15/255, green: 128/255, blue: 245/255))
                Spacer()
                    .padding()
                ZStack{
                    Color.init(red: 215/255, green: 233/255, blue: 247/255).ignoresSafeArea()
                    VStack(spacing:0){
                        Text("내가 보는 나는")
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                        VStack{
                            Text("-보살피는, 로맨틱, 영적인, 강한 믿음")
                                .padding(3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                            Text("-보살피는, 로맨틱, 영적인, 강한 믿음")
                                .padding(3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                            Text("-보살피는, 로맨틱, 영적인, 강한 믿음")
                                .padding(3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                        }
                        .font(.body)
                        .padding()
                        .frame(width: 326)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                                .shadow(radius: 4)
                            )
                        .background(Color.white)
                        Text("남이 보는 나는")
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                        VStack{
                            Text("-보살피는, 로맨틱, 영적인, 강한 믿음")
                                .padding(3)
                            Text("-보살피는, 로맨틱, 영적인, 강한 믿음")
                                .padding(3)
                            Text("-보살피는, 로맨틱, 영적인, 강한 믿음")
                                .padding(3)

                        }
                        .font(.body)
                        .padding()
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .frame(width: 326)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                                .shadow(radius: 4)
                            )
                        .background(Color.white)
                        Text("전체 설명")
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                        VStack{
                            Text(" 내 마음으로 이끌고 더 나은 세상을 꿈꾼다. 나는 기쁨과 아픔을 동시에 깊이 느낀다. 나는 사람과 자연에서 아름다움을 발견하는 것을 좋아한다. 저는 사람들과 사물들을 기르고 보살피며 그들이 성장하는 것을 지켜보는 것을 좋아합니다. 저는 로맨틱해요.")
                                .padding(3)
                            Text("개인적인 관계는 나에게 중요합니다. 솔직한 나눔과 진정한 소통은 인생에서 가장 높은 것들 중 하나입니다. 다른 사람들과 함께 있는 것은 특히 그들이 이기적이고 무관심할 때 힘들 수 있다.")
                                .padding(3)
                            Text("저는 항상 화해하려고 노력하지만, 잘 지낼 수 없거나 그렇지 않은 사람들과 함께 있기보다는 혼자 있고 싶어요. 나는 가끔 기분이 우울하고, 과거의 오래된 감정과 경험들이 내 곁에 오래 남는다.")
                                .padding(3)
                            Text("나는 항상 사람들에게서 최고를 찾고 싶어. 나는 협력과 호의를 소중히 여긴다. 나는 영적인 것에 관심이 있다. 나는 \"이해하는 평화\"를 바란다.")
                                .padding(3)
                        }
                        .font(.body)
                        .padding()
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .frame(width: 326)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                                .shadow(radius: 4)
                            )
                        .background(Color.white)
                        Spacer()
                            .frame(height:40)
                        HStack(spacing:30){
                            Button("고반의 컬러는?") {
                                gotostartView = false
                            }
                            .buttonStyle(GrowingButton())
                            Button("다시하기") {
                                gotostartView = false
                            }
                            .buttonStyle(GrowingButton())
                        }
                        .padding(30)
                    }
                }
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView(gotostartView: .constant(false))
    }
}
