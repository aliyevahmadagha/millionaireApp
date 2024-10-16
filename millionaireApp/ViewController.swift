//
//  ViewController.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 30.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    var gameModels: [Question] = []
    
    var currentQuestion: Question?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupQuestions()
        view1.backgroundColor = .black
        
        label.textColor = .white
        
        table.delegate = self
        table.dataSource = self
        table.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        table.rowHeight = 80
        
        configureUI(question: gameModels.first!)

        
    }
    
  
    
    private func configureUI(question: Question) {
        
        currentQuestion = question
        label.text = question.text
        
        table.reloadData()
        
        
    }
    
    private func checkAnswer(answer: Answer, question: Question) -> Bool {
        
        return question.answer.contains(where: { $0.text == answer.text }) && answer.correct
        
    }
    
    
    private func setupQuestions() {
        
        gameModels.append(Question(text: "2 + 2", answer: [
            Answer(text: "1", correct: false),
            Answer(text: "5", correct: false),
            Answer(text: "3", correct: false),
            Answer(text: "4", correct: true)]))
        
        gameModels.append(Question(text: "5 + 2", answer: [
            Answer(text: "6", correct: false),
            Answer(text: "7", correct: true),
            Answer(text: "9", correct: false),
            Answer(text: "8", correct: false)]))
        
        gameModels.append(Question(text: "20 * 6", answer: [
            Answer(text: "120", correct: true),
            Answer(text: "220", correct: false),
            Answer(text: "140", correct: false),
            Answer(text: "100", correct: false)]))
        
        gameModels.append(Question(text: "20 / 5", answer: [
            Answer(text: "4", correct: true),
            Answer(text: "4.5", correct: false),
            Answer(text: "5", correct: false),
            Answer(text: "6", correct: false)]))
        
        gameModels.append(Question(text: "30 / 4", answer: [
            Answer(text: "7.4", correct: false),
            Answer(text: "8.5", correct: false),
            Answer(text: "7.5", correct: true),
            Answer(text: "8.4", correct: false)]))
        
        gameModels.append(Question(text: "30 * 4", answer: [
            Answer(text: "110", correct: false),
            Answer(text: "130", correct: false),
            Answer(text: "120", correct: true),
            Answer(text: "125", correct: false)]))
        
        gameModels.append(Question(text: "30 + 4", answer: [
            Answer(text: "33", correct: false),
            Answer(text: "34", correct: true),
            Answer(text: "35", correct: false),
            Answer(text: "36", correct: false)]))
        
        gameModels.append(Question(text: "30 - 4", answer: [
            Answer(text: "24", correct: false),
            Answer(text: "27", correct: false),
            Answer(text: "25", correct: false),
            Answer(text: "26", correct: true)]))
        
        gameModels.append(Question(text: "100 * 5.5", answer: [
            Answer(text: "450", correct: false),
            Answer(text: "550", correct: true),
            Answer(text: "650", correct: false),
            Answer(text: "350", correct: false)]))
        
        gameModels.append(Question(text: "1000 - 333", answer: [
            
            Answer(text: "777", correct: false),
            Answer(text: "767", correct: false),
            Answer(text: "677", correct: false),
            Answer(text: "667", correct: true)]))
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        currentQuestion?.answer.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        
        let object = currentQuestion?.answer[indexPath.row]
        
        cell.cellLabel.text = object?.text
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let question = currentQuestion else { return }
        
        let answer = question.answer[indexPath.row]
        
        if checkAnswer(answer: answer, question: question) {
            
            if let index = gameModels.firstIndex(where: { $0.text == question.text }) {
                
                if index < (gameModels.count - 1) {
                    let nextQuestion = gameModels[index + 1]
                    currentQuestion = nil
                    configureUI(question: nextQuestion)
                    
                    
                    
                    
                } else {
                    
                    let alert = UIAlertController(title: "Done", message: "You won", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                    
                    present(alert, animated: true)
                    
                }
            }
            
            
        } else {
            
            let alert = UIAlertController(title: "Wrong", message: "You lost", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            
            present(alert, animated: true)
            
        }
        
    }
    
    
}

