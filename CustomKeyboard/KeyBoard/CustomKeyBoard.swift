//
//  CustomKeyBoard.swift
//  CustomKeyboard
//
//  Created by 김기림 on 2022/07/12.
//

import UIKit

// FIXME: final 키워드가 필요하진 않나용?, 추가로 stackView를 상속받은걸 알 수 있게 네이밍 해야할거같아요!
class CustomKeyBoard: UIStackView {
    
    struct Math {
        // FIXME: 강제 언래핑을 사용해도 되나요??
        static var keyboardWidth: CGFloat {
            let sceneDelegate = UIApplication.shared.connectedScenes
                .first!.delegate as! SceneDelegate
            return sceneDelegate.windowWidth!
            // FIXME: 화면의 넓이를 가져오는 다른 방법이 있을거에요. 다시 찾아봅시다~
        }
        static let keyboardHeight: CGFloat = keyboardWidth < 340 ? keyboardWidth*3/5 : keyboardWidth*3/4
        static let buttonPadding = 5.0
        static let buttonWidth = keyboardWidth / 10.0 - buttonPadding
        static let fontSize: CGFloat = keyboardWidth < 340 ? 13.0 : 19.0
    }
    
    // MARK: - Properties
    private let firstLineContainer = FirstRowKeyContainer()
    private let secondLineContainer = SecondRowKeyContainer()
    private let thirdLineContainer = ThirdRowKeyContainer()
    private let firthLineContainer = FirthRowKeyContainer()
    
    weak var delegate: CustomKeyBoardDelegate?
    private let viewModel = CustomKeyBoardViewModel(engine: KeyBoardEngine())
    
    init() {
        super.init(frame: CGRect.zero)
        configureUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - CustomKeyBoard: private 메서드
extension CustomKeyBoard {
    private func tappedBasicKey(unicode: Int) {
        
        delegate?.connectTextView().text = viewModel.addWord(inputUniCode: unicode, to: delegate?.connectTextView().text)
    }
}

//MARK: - FirstRowKeyContainerDelegate(첫번째줄컨테이너) 이벤트 메서드
extension CustomKeyBoard: FirstRowKeyContainerDelegate {
    func tappedFirstrowBasicKey(unicode: Int) {
        
        tappedBasicKey(unicode: unicode)
    }
}

//MARK: - SecondRowKeyContainerDelegate(두번째줄컨테이너) 이벤트 메서드
extension CustomKeyBoard: SecondRowKeyContainerDelegate {
    func tappedSecondrowBasicKey(unicode: Int) {
        
        tappedBasicKey(unicode: unicode)
    }
}

//MARK: - ThirdRowKeyContainerDelegate(세번째줄컨테이너) 이벤트 메서드
extension CustomKeyBoard: ThirdRowKeyContainerDelegate {
    func tappedShiftButton() -> Bool {
        return firstLineContainer.toggleDynamicBasicKeyState() == .double ? true : false
    }
    
    func tappedBackButton() {
        
        delegate?.connectTextView().text = viewModel.removeWord(from: delegate?.connectTextView().text)
    }
    
    func tappedThirdrowBasicKey(unicode: Int) {
        
        tappedBasicKey(unicode: unicode)
    }
}

//MARK: - FirthRowKeyContainerDelegate(네번째줄컨테이너) 이벤트 메서드
extension CustomKeyBoard: FirthRowKeyContainerDelegate {
    func tappedReturnButton() {
        
        delegate?.tappedReturnButton()
    }
    
    func tappedSpaceButton(_ inputUniCode: Int) {
        
        delegate?.connectTextView().text = viewModel.addSpace(inputUniCode: inputUniCode, to: delegate?.connectTextView().text)
    }
}

//MARK: - ConfigureUI
extension CustomKeyBoard {
    private func configureUI() {
        
        configureAttribute()
        configureLayout()
    }
    
    private func configureAttribute() {
        // FIXME: self 필요한가용?
        self.backgroundColor = .systemGray3
        self.axis = .vertical
        self.distribution = .equalSpacing
        self.alignment = .center
        
        firstLineContainer.delegate = self
        secondLineContainer.delegate = self
        thirdLineContainer.delegate = self
        firthLineContainer.delegate = self
    }
    
    private func configureLayout() {
        
        let topPaddingView = UIView()
        let bottomPaddingView = UIView()
        
        [topPaddingView, firstLineContainer, secondLineContainer, thirdLineContainer, firthLineContainer, bottomPaddingView].forEach {
            self.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        topPaddingView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0).isActive = true
        bottomPaddingView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/8).isActive = true
        [firstLineContainer, secondLineContainer, thirdLineContainer, firthLineContainer].forEach {
            $0.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/6).isActive = true
        }
        
        let sidePadding = Math.buttonPadding
        [firstLineContainer, secondLineContainer, thirdLineContainer, firthLineContainer].forEach {
            $0.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -sidePadding*2).isActive = true
        }
    }
}
