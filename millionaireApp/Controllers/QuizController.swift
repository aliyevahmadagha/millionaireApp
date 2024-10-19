//
//  QuizController.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 16.10.24.
//

import UIKit

class QuizController: UIViewController {
    
    var gameModels: [Question] = []
    var currentQuestion: Question?
    
    var quizCount: Int = 0
    var correctAnswerCount: Int = 0
    
    var index: Int = 0
    var myIndexPath: IndexPath?
    
    
    
    let myCollection: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 25
        
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collection.backgroundColor = UIColor(named: "backgroundGray")
        
        layout.itemSize = CGSize(width: 346, height: 53)
        return collection
        
    }()
    
    
    let quizView: UIView = {
        
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .white
        return view
        
    }()
    
    
    let quizLabel: UILabel = {
        
        let label = UILabel()
        label.text = "In what year did the United States host the FIFA World Cup for the first time?"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
        
    }()
    
    
    let scoreLabel: UILabel = {
        
        let label = UILabel()
        label.numberOfLines = 0
        return label
        
    }()
    
    
    
    
    lazy var nextButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(nextQuestion), for: .touchUpInside)
        button.backgroundColor = UIColor(named: "nextButtonColor")
        return button
        
    }()
    
    
    @objc func nextQuestion() {
        
        myIndexPath = IndexPath(row: 0, section: 0)
        
        index += 1
        quizCount += 1
        scoreLabel.text = "\(correctAnswerCount)/\(quizCount)"
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(named: "backgroundGray")
        view.alpha = 1
        
        setupConstraints()
        collectionViewConfigure()
        setupQuestions()
        configureUI(question: gameModels.first!)
        
        

    }
    
    
    private func checkAnswer(answer: Answer, question: Question) -> Bool {
        
        return question.answer.contains(where: { $0.text == answer.text }) && answer.correct
        
    }
    
    
    private func configureUI(question: Question) {
        
        currentQuestion = question
        quizLabel.text = question.text
        
        myCollection.reloadData()
        
        
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
    
    
    func collectionViewConfigure() {
        
        myCollection.delegate = self
        myCollection.dataSource = self
        myCollection.register(UINib(nibName: "CollectionCell", bundle: nil), forCellWithReuseIdentifier: "CollectionCell")
        
        
    }
    
    
    func setupConstraints() {
        
        view.addSubview(quizView)
        quizView.addSubview(quizLabel)
        view.addSubview(myCollection)
        view.addSubview(nextButton)
        view.addSubview(scoreLabel)
        
        quizView.translatesAutoresizingMaskIntoConstraints = false
        quizLabel.translatesAutoresizingMaskIntoConstraints = false
        myCollection.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        quizView.topAnchor.constraint(equalTo: view.topAnchor, constant: 137).isActive = true
        quizView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        quizView.heightAnchor.constraint(equalToConstant: 229).isActive = true
        quizView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        
        
        quizLabel.topAnchor.constraint(equalTo: quizView.topAnchor, constant: 71).isActive = true
        quizLabel.leadingAnchor.constraint(equalTo: quizView.leadingAnchor, constant: 24).isActive = true
        quizLabel.heightAnchor.constraint(equalToConstant: 58).isActive = true
        quizLabel.trailingAnchor.constraint(equalTo: quizView.trailingAnchor, constant: -25).isActive = true
        
        
        myCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -159).isActive = true
        myCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        myCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        myCollection.heightAnchor.constraint(equalToConstant: 287).isActive = true
        
        
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -61).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        
        scoreLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scoreLabel.widthAnchor.constraint(equalToConstant: 32).isActive = true
        scoreLabel.heightAnchor.constraint(equalToConstant: 29).isActive = true
        
        
        
    }
    
    
    
    
    
    
}

extension QuizController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let count = currentQuestion?.answer.count else {return 0}
        return count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        
        let object = currentQuestion?.answer[indexPath.row]
        
        cell.myLabel.text = object?.text
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
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
            
            
            
        }
                
        
        
    }
    
}
