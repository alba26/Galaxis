//
//  Learners.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 03/05/21.
//

import Foundation


class Learners: ObservableObject{
    @Published var learnerData = [Learner]()
    let name = "Aditya"
    init(){
        let url = Bundle.main.url(forResource: "LearnersData", withExtension: ".json")!
        let data = try! Data(contentsOf: url)
        learnerData = try! JSONDecoder().decode([Learner].self, from: data)
        //        loadJSON()
        //        print(learnerData[0])
        reOrder()
        print(predictRecommeder())
        print(learnerData)
        
    }
    
    func reOrder(){
        let recommendation = predictRecommeder()
        for y in 0..<recommendation.count{
            for x in 0..<learnerData.count{
                if recommendation[y] == learnerData[x].nama.components(separatedBy: " ")[0]{
                    learnerData.swapAt(x, y)
                }
            }
            
        }
        
    }
    
    
    func predictRecommeder() -> Array<String>{
        let galaxisRecommender = GalaxisRecommender()
        let userSession:[String : Double] = [name:1]
        let input = GalaxisRecommenderInput(items: userSession, k: 21)
        let result = try! galaxisRecommender.prediction(input: input)
        //        print(result.recommendations)
        return result.recommendations
        
    }
    
    //    func reOrder(array:[String], order:[String]){
    //
    //
    //        return order.filter{array.contains($0)} + array.filter{!order.contains($0)}
    //
    //    }
    
    
    func loadJSON(){
        //        let url = Bundle.main.url(forResource: "LearnersData", withExtension: ".json")!
        //        URLSession.shared.dataTask(with: url){(data,response,error) in
        //            do {
        //                if let fetchData = data{
        //                    let decodeData = try JSONDecoder().decode([Learner].self, from: fetchData)
        //                    DispatchQueue.main.async {
        //                        self.learnerData = decodeData
        //                    }
        //                } else {
        //                    print("NO DATA")
        //                }
        //            } catch{
        //                print(error)
        //            }
        //        }.resume()
    }
}



