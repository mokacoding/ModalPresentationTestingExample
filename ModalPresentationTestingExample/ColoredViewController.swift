import UIKit

class ColoredViewController: UIViewController {

    let color: UIColor

    init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
    }
}
