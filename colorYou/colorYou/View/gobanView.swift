//
//  gobanView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/05/04.
//

import SwiftUI

struct gobanView: View {
    var userResultModel : resultModel = resultModel(userResult: "Gold")
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack{
            userResultModel.backgroundColor.edgesIgnoringSafeArea(.bottom)
            Color.white.frame(height:600).padding(EdgeInsets(top: 0, leading: 0, bottom: 163, trailing: 0)).edgesIgnoringSafeArea(.top)
            ScrollView(showsIndicators: false){
                VStack{
                    Text("고반의 컬러는")
                        .font(.title)
                        .frame(maxWidth:.infinity,alignment: .trailing)
                        .padding(EdgeInsets(top: 32, leading: 0, bottom: 1, trailing: 67))
                    HStack{
                        Text(userResultModel.colorName)
                            .font(Font.system(size: 45))
                            .foregroundColor(userResultModel.titleColor)
                            .fontWeight(.bold)
                        
                        Text("입니다")
                            .font(.largeTitle)
                    }
                    .frame(maxWidth:.infinity,alignment: .trailing)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 37))
                    Image(userResultModel.imageName)
                        .resizable()
                        .frame(width: 320, height: 320)
                        .scaledToFit()
                    Text("😼 나의 좌우명은?")
                        .font(.title3)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(EdgeInsets(top: 30, leading: 37, bottom: 20, trailing: 0))
                    Text("\"\(userResultModel.moto)\"")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 326)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                                .shadow(radius: 9)
                        )
                        .foregroundColor(userResultModel.titleColor)
                    Spacer()
                        .padding()
                }
                .background(Color.white)
                    ZStack{
                        userResultModel.backgroundColor.ignoresSafeArea()
                        VStack(spacing:0){
                            Text("😸 내가 보는 나는")
                                .font(.title3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                            VStack{
                                Text(userResultModel.selfSee1)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.selfSee2)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.selfSee3)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.selfSee4)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                            }
                            .font(.body)
                            .padding()
                            .frame(width: 335)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1)
                                    .shadow(radius: 2)
                            )
                            .background(Color.white)
                            Text("🙀 남이 보는 나는")
                                .font(.title3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                            VStack{
                                Text(userResultModel.otherSee1)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.otherSee2)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.otherSee3)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.otherSee4)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                
                            }
                            .font(.body)
                            .padding()
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .frame(width: 335)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1)
                                    .shadow(radius: 2)
                            )
                            .background(Color.white)
                            Text("😽 당신의 컬러를 밝히는 방법")
                                .font(.title3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                            VStack{
                                Text(userResultModel.brightenColor1)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.brightenColor2)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.brightenColor3)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                Text(userResultModel.brightenColor4)
                                    .padding(3)
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                
                            }
                            .font(.body)
                            .padding()
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .frame(width: 335)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1)
                                    .shadow(radius: 2)
                            )
                            .background(Color.white)
                            Text("🐱 전체 설명")
                                .font(.title3)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding(EdgeInsets(top: 100, leading: 37, bottom: 20, trailing: 0))
                            VStack(spacing:30){
                                Text(userResultModel.totalContent1)
                                Text(userResultModel.totalContent2)
                                Text(userResultModel.totalContent3)
                                Text(userResultModel.totalContent4)
                                Text(userResultModel.totalContent5)
                            }
                            .font(.body)
                            .lineSpacing(5)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.white, lineWidth: 1)
                                    .shadow(radius: 2)
                            )
                            .background(Color.white)
                            .padding()
                            HStack(spacing:30){
                            }
                            .padding(30)
                        }
                    }
            }
            .navigationBarTitle("", displayMode: .automatic)
            .accentColor(userResultModel.titleColor)
        }
    }
}

struct gobanView_Previews: PreviewProvider {
    static var previews: some View {
        gobanView(userResultModel: resultModel(userResult: "Gold"))
    }
}
