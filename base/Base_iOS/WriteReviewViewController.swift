import UIKit

class WriteReviewViewController: UIViewController{
   
    var navBar: UINavigationBar = UINavigationBar()

    override func viewDidLoad(){
        super.viewDidLoad()
        self.setNavBarToTheView()
        navigationItem.title = "리뷰쓰기"
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func setNavBarToTheView() {
        self.navBar.frame = CGRectMake(0, 0, 320, 106)
        self.navBar.backgroundColor = UIColor(red: 0.363, green: 0.142, blue: 0.142, alpha: 1)
        self.view.addSubview(navBar)
        navBar.snp.makeConstraints { maker in
            maker.top.equalTo(view.snp.top)
            maker.leading.equalTo(view.snp.leading)
        }
        
        
    }
}
