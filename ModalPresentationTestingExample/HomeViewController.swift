import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var button: UIButton!
}

func present(
    _ presentee: UIViewController,
    from presenter: ModalViewControllerPresenting,
    animated: Bool,
    completion: (() -> Void)?
) {
    presenter.present(presentee, animated: animated, completion: completion)
}

protocol ModalViewControllerPresenting {

    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
}

extension UIViewController: ModalViewControllerPresenting {}

class HelpFlowNavigator {

    let root: ModalViewControllerPresenting

    init(root: ModalViewControllerPresenting) {
        self.root = root
    }

    func showHelpFlow() { }
}
