

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor = .some(.systemOrange)
        titleLabel?.font    = .preferredFont(forTextStyle: .title1)
        layer.cornerRadius  = frame.size.height/2
        setTitleColor(.black, for: .normal)
    }
}
