@testable import ModalPresentationTestingExample
import XCTest

class ModalPresentationTests: XCTestCase {

    func testPresentationPresenterOnPresenterViewController() {
        let presenterSpy = ModalViewControllerPresentingSpy()

        present(TestViewController(), from: presenterSpy, animated: false, completion: .none)

        XCTAssertTrue(presenterSpy.presented is TestViewController)
    }

    func testShowingHelpFlowPresentsModallyOnRoot() {
        let presenterSpy = ModalViewControllerPresentingSpy()
        let navigator = HelpFlowNavigator(root: presenterSpy)

        navigator.showHelpFlow()

        // Left this test intentionally failing, your next step is to make it pass, and then
        // understand whether this is a technique that can be used meaningfully in the real world,
        // or whether it's just good on paper but focuses too much on implementation details.
        XCTAssertTrue(presenterSpy.presented is ColoredViewController)
    }
}

class ModalViewControllerPresentingSpy: ModalViewControllerPresenting {

    private(set) var presented: UIViewController?

    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        presented = viewController
        completion?()
    }
}

class TestViewController: UIViewController {}
