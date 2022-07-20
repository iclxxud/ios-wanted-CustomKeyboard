//
//  KeyBoardEngineTest_kirkim.swift
//  KeyBoardEngineTest_kirkim
//
//  Created by 김기림 on 2022/07/15.
//

import XCTest
@testable import CustomKeyboard

// FIXME: 좀 더 다양한 테스트가 있으면 좋곘는데.. 흠..🤔
class KeyBoardEngine_addWord__test: XCTestCase {
    
    var sut:KeyBoardEngineProtocol?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = KeyBoardEngine()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func test_addWord호출시_ㅂ에_ㅂ_입력시_ㅃ가반환되는지() {
        let input2 = 12610
        let input1 = 12610
        let result = "ㅃ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅈ에_ㅈ_입력시_ㅉ가반환되는지() {
        let input2 = 12616
        let input1 = 12616
        let result = "ㅉ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㄷ에_ㄷ_입력시_ㄸ가반환되는지() {
        let input2 = 12599
        let input1 = 12599
        let result = "ㄸ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㄱ에_ㄱ_입력시_ㄲ가반환되는지() {
        let input2 = 12593
        let input1 = 12593
        let result = "ㄲ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅅ에_ㅅ_입력시_ㅆ가반환되는지() {
        let input2 = 12613
        let input1 = 12613
        let result = "ㅆ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅓ에_ㅣ_입력시_ㅔ가반환되는지() {
        let input2 = 12627
        let input1 = 12643
        let result = "ㅔ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅏ에_ㅣ_입력시_ㅐ가반환되는지() {
        let input2 = 12623
        let input1 = 12643
        let result = "ㅐ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅑ에_ㅣ_입력시_ㅒ가반환되는지() {
        let input2 = 12625
        let input1 = 12643
        let result = "ㅒ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅕ에_ㅣ_입력시_ㅖ가반환되는지() {
        let input2 = 12629
        let input1 = 12643
        let result = "ㅖ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅗ에_ㅏ_입력시_ㅘ가반환되는지() {
        let input2 = 12631
        let input1 = 12623
        let result = "ㅘ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅗ에_ㅣ_입력시_ㅚ가반환되는지() {
        let input2 = 12631
        let input1 = 12643
        let result = "ㅚ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅗ에_ㅐ_입력시_ㅙ가반환되는지() {
        let input2 = 12631
        let input1 = 12624
        let result = "ㅙ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅜ에_ㅣ_입력시_ㅟ가반환되는지() {
        let input2 = 12636
        let input1 = 12643
        let result = "ㅟ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅜ에_ㅔ_입력시_ㅞ가반환되는지() {
        let input2 = 12636
        let input1 = 12628
        let result = "ㅞ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅡ에_ㅣ_입력시_ㅢ가반환되는지() {
        let input2 = 12641
        let input1 = 12643
        let result = "ㅢ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_각에_ㅅ_입력시_갃반환되는지() {
        let input2 = 44033
        let input1 = 12613
        let result = "갃"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㅈ_입력시_갅반환되는지() {
        let input2 = 44036
        let input1 = 12616
        let result = "갅"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㅎ_입력시_갆반환되는지() {
        let input2 = 44036
        let input1 = 12622
        let result = "갆"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㄱ_입력시_갉반환되는지() {
        let input2 = 44040
        let input1 = 12593
        let result = "갉"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅁ_입력시_갊반환되는지() {
        let input2 = 44040
        let input1 = 12609
        let result = "갊"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅂ_입력시_갋반환되는지() {
        let input2 = 44040
        let input1 = 12610
        let result = "갋"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅅ_입력시_갌반환되는지() {
        let input2 = 44040
        let input1 = 12613
        let result = "갌"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅌ_입력시_갍반환되는지() {
        let input2 = 44040
        let input1 = 12620
        let result = "갍"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅍ_입력시_갎반환되는지() {
        let input2 = 44040
        let input1 = 12621
        let result = "갎"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅎ_입력시_갏반환되는지() {
        let input2 = 44040
        let input1 = 12622
        let result = "갏"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갑에_ㅅ_입력시_값반환되는지() {
        let input2 = 44049
        let input1 = 12613
        let result = "값"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㅃ_입력시_간ㅃ반환되는지() {
        let input2 = 44036
        let input1 = 12611
        let result = "간ㅃ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㅉ_입력시_간ㅉ반환되는지() {
        let input2 = 44036
        let input1 = 12617
        let result = "간ㅉ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㄸ_입력시_간ㄸ반환되는지() {
        let input2 = 44036
        let input1 = 12600
        let result = "간ㄸ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㅆ_입력시_간ㅆ반환되는지() {
        let input2 = 44036
        let input1 = 12614
        let result = "간ㅆ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㄷ_입력시_간ㄷ반환되는지() {
        let input2 = 44036
        let input1 = 12599
        let result = "간ㄷ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_간에_ㅣ_입력시_가니반환되는지() {
        let input2 = 44036
        let input1 = 12643
        let result = "가니"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅗ_입력시_가로반환되는지() {
        let input2 = 44040
        let input1 = 12631
        let result = "가로"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_갈에_ㅐ_입력시_가래반환되는지() {
        let input2 = 44040
        let input1 = 12624
        let result = "가래"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㄱ_입력시_각반환되는지() {
        let input2 = 44032
        let input1 = 12593
        let result = "각"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㄲ_입력시_갂반환되는지() {
        let input2 = 44032
        let input1 = 12594
        let result = "갂"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㄴ_입력시_간반환되는지() {
        let input2 = 44032
        let input1 = 12596
        let result = "간"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㄷ_입력시_갇반환되는지() {
        let input2 = 44032
        let input1 = 12599
        let result = "갇"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㄹ_입력시_갈반환되는지() {
        let input2 = 44032
        let input1 = 12601
        let result = "갈"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅁ_입력시_감반환되는지() {
        let input2 = 44032
        let input1 = 12609
        let result = "감"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅂ_입력시_갑반환되는지() {
        let input2 = 44032
        let input1 = 12610
        let result = "갑"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅅ_입력시_갓반환되는지() {
        let input2 = 44032
        let input1 = 12613
        let result = "갓"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅆ_입력시_갔반환되는지() {
        let input2 = 44032
        let input1 = 12614
        let result = "갔"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅇ_입력시_강반환되는지() {
        let input2 = 44032
        let input1 = 12615
        let result = "강"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅈ_입력시_갖반환되는지() {
        let input2 = 44032
        let input1 = 12616
        let result = "갖"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅊ_입력시_갗반환되는지() {
        let input2 = 44032
        let input1 = 12618
        let result = "갗"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅋ_입력시_갘반환되는지() {
        let input2 = 44032
        let input1 = 12619
        let result = "갘"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅌ_입력시_같반환되는지() {
        let input2 = 44032
        let input1 = 12620
        let result = "같"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅍ_입력시_갚반환되는지() {
        let input2 = 44032
        let input1 = 12621
        let result = "갚"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_가에_ㅎ_입력시_갛반환되는지() {
        let input2 = 44032
        let input1 = 12622
        let result = "갛"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅂ에_ㅗ_입력시_보가반환되는지() {
        let input2 = 12610
        let input1 = 12631
        let result = "보"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_보에_ㅐ_입력시_봬가반환되는지() {
        let input2 = 48372
        let input1 = 12624
        let result = "봬"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_궈에_ㅣ_입력시_궤가반환되는지() {
        let input2 = 44424
        let input1 = 12643
        let result = "궤"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_과에_ㅣ_입력시_괘가반환되는지() {
        let input2 = 44284
        let input1 = 12643
        let result = "괘"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_자에_ㅃ_입력시_자ㅃ가반환되는지() {
        let input2 = 51088
        let input1 = 12611
        let result = "자ㅃ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_자에_ㅉ_입력시_자ㅉ가반환되는지() {
        let input2 = 51088
        let input1 = 12617
        let result = "자ㅉ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_자에_ㄸ_입력시_자ㄸ가반환되는지() {
        let input2 = 51088
        let input1 = 12600
        let result = "자ㄸ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_자에_ㄲ_입력시_잒가반환되는지() {
        let input2 = 51088
        let input1 = 12594
        let result = "잒"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_자에_ㅆ_입력시_잤가반환되는지() {
        let input2 = 51088
        let input1 = 12614
        let result = "잤"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅗ에_ㅓ_입력시_ㅗㅓ가반환되는지() {
        let input2 = 12631
        let input1 = 12627
        let result = "ㅗㅓ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_도에_ㅓ_입력시_도ㅓ가반환되는지() {
        let input2 = 46020
        let input1 = 12627
        let result = "도ㅓ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅜ에_ㅏ_입력시_ㅜㅏ가반환되는지() {
        let input2 = 12636
        let input1 = 12623
        let result = "ㅜㅏ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_두에_ㅏ_입력시_두ㅏ가반환되는지() {
        let input2 = 46160
        let input1 = 12623
        let result = "두ㅏ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅓ에_ㅗ_입력시_ㅓㅗ가반환되는지() {
        let input2 = 12627
        let input1 = 12631
        let result = "ㅓㅗ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_더에_ㅗ_입력시_더ㅗ가반환되는지() {
        let input2 = 45908
        let input1 = 12631
        let result = "더ㅗ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅏ에_ㅜ_입력시_ㅏㅜ가반환되는지() {
        let input2 = 12623
        let input1 = 12636
        let result = "ㅏㅜ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_다에_ㅜ_입력시_다ㅜ가반환되는지() {
        let input2 = 45796
        let input1 = 12636
        let result = "다ㅜ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅝ에_ㅣ_입력시_ㅞ가반환되는지() {
        let input2 = 12637
        let input1 = 12643
        let result = "ㅞ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_ㅘ에_ㅣ_입력시_ㅙ가반환되는지() {
        let input2 = 12632
        let input1 = 12643
        let result = "ㅙ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_워에_ㅣ_입력시_웨가반환되는지() {
        let input2 = 50892
        let input1 = 12643
        let result = "웨"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    
    func test_addWord호출시_와에_ㅣ_입력시_왜가반환되는지() {
        let input2 = 50752
        let input1 = 12643
        let result = "왜"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    func test_addWord호출시_확에_ㄱ_입력시_확ㄱ가반환되는지() {
        let input2 = 54869
        let input1 = 12593
        let result = "확ㄱ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    func test_addWord호출시_환에_ㅇ_입력시_환ㅇ가반환되는지() {
        let input2 = 54872
        let input1 = 12615
        let result = "환ㅇ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    func test_addWord호출시_홥에_ㄷ_입력시_홥ㄷ가반환되는지() {
        let input2 = 54885
        let input1 = 12599
        let result = "홥ㄷ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    func test_addWord호출시_활에_ㅇ_입력시_활ㅇ가반환되는지() {
        let input2 = 54876
        let input1 = 12615
        let result = "활ㅇ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    func test_addWord호출시_방에_ㅎ_입력시_확ㄱ가반환되는지() {
        let input2 = 48169
        let input1 = 12622
        let result = "방ㅎ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
    func test_addWord호출시_핛에_ㄱ_입력시_핛ㄱ가반환되는지() {
        let input2 = 54619
        let input1 = 12593
        let result = "핛ㄱ"
        
        XCTAssertEqual(sut?.addWord(inputUniCode: input1, lastUniCode: input2), result)
    }
}
