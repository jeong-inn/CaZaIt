import UIKit
import SnapKit


class WriteReviewViewController: UIViewController{
   
    var navBar: UINavigationBar = UINavigationBar()
    
    //카페는 어떠셨나요? 별점을 남겨주세요.
    let text1: UILabel = {
        let text1 = UILabel()
        text1.text = "카페는 어떠셨나요? 별점을 남겨주세요."
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.font = .italicSystemFont(ofSize: 15)
        return text1
    }()
    
    //별
    let star1: UIImageView = {
        let star1 = UIImageView()
        star1.image = UIImage(named: "star")
        star1.translatesAutoresizingMaskIntoConstraints = false
        star1.contentMode = .scaleToFill
        return star1
        
    }()
    
    let star2: UIImageView = {
        let star2 = UIImageView()
        star2.image = UIImage(named: "star")
        star2.translatesAutoresizingMaskIntoConstraints = false
        star2.contentMode = .scaleToFill
        return star2
        
    }()
    
    let star3: UIImageView = {
        let star3 = UIImageView()
        star3.image = UIImage(named: "star")
        star3.translatesAutoresizingMaskIntoConstraints = false
        star3.contentMode = .scaleToFill
        return star3
        
    }()
    
    let star4: UIImageView = {
        let star4 = UIImageView()
        star4.image = UIImage(named: "star")
        star4.translatesAutoresizingMaskIntoConstraints = false
        star4.contentMode = .scaleToFill
        return star4
        
    }()
    
    let star5: UIImageView = {
        let star5 = UIImageView()
        star5.image = UIImage(named: "star")
        star5.translatesAutoresizingMaskIntoConstraints = false
        star5.contentMode = .scaleToFill
        return star5
        
    }()
    
    private lazy var hstackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 10
        return view
    }()
    
    //카페는 어떠셨나요? 별점을 남겨주세요.
    let text2: UILabel = {
        let text2 = UILabel()
        text2.text = "다른 이용자를 위해 카페 리뷰를 남겨주세요."
        text2.translatesAutoresizingMaskIntoConstraints = false
        text2.font = .italicSystemFont(ofSize: 15)
        return text2
    }()
    
    //공백 포함 최대 50자 이내로 작성해주세요.
    let label1: UILabel = {
        let label1 = UILabel()
        //label1.frame = CGRect(x: 29, y: 293, width: 335, height: 163)
        label1.backgroundColor = .white
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.font = .systemFont(ofSize: 14, weight: .regular)
        label1.textColor = UIColor(red: 0.708, green: 0.708, blue: 0.708, alpha: 1)
        label1.text = "공백 포함 최대 50자 이내로 작성해주세요."
        label1.layer.borderWidth = 1
        label1.layer.borderColor = UIColor(red: 0.363, green: 0.142, blue: 0.142, alpha: 1).cgColor
        label1.layer.cornerRadius = 25
        label1.layer.masksToBounds = true
        return label1
    }()
    
    //작성하기
    let button1: UIButton = {
        var button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = UIColor(red: 0.363, green: 0.142, blue: 0.142, alpha: 1)
        button1.imageView?.contentMode = .scaleAspectFit
        button1.layer.cornerRadius = 20
        button1.setTitle("작성하기", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.layer.shadowColor = UIColor.gray.cgColor
        button1.layer.shadowOpacity = 1.0
        button1.layer.shadowRadius = 6
        button1.layer.shadowOffset = CGSize(width: 0, height: 5)
        return button1
    }()
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.setNavBarToTheView()
        navigationItem.title = "리뷰쓰기"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.topItem?.title = ""

        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        self.view.addSubview(text1)
        text1.snp.makeConstraints { maker in
            maker.top.equalTo(view.snp.top).offset(151)
            maker.leading.equalTo(view.snp.leading).offset(37)
        }
        
        view.addSubview(hstackView)
        hstackView.addArrangedSubview(star1)
        hstackView.addArrangedSubview(star2)
        hstackView.addArrangedSubview(star3)
        hstackView.addArrangedSubview(star4)
        hstackView.addArrangedSubview(star5)
        hstackView.snp.makeConstraints { maker in
            maker.top.equalTo(view.snp.top).offset(173)
            maker.leading.equalTo(view.snp.leading).offset(37)
        }
        
        self.view.addSubview(text2)
        text2.snp.makeConstraints { maker in
            maker.top.equalTo(view.snp.top).offset(259)
            maker.leading.equalTo(view.snp.leading).offset(37)
        }
        
        self.view.addSubview(label1)
        label1.snp.makeConstraints { maker in
            maker.top.equalTo(view.snp.top).offset(293)
            maker.leading.equalTo(view.snp.leading).offset(29)
            maker.width.equalTo(335)
            maker.height.equalTo(163)
        }
        
        
        self.view.addSubview(button1)
        button1.snp.makeConstraints { maker in
            maker.top.equalTo(view.snp.top).offset(503)
            maker.leading.equalTo(view.snp.leading).offset(122)
            maker.width.equalTo(150)
            maker.height.equalTo(46)
        }

    }
    
    func setNavBarToTheView() {
        self.navBar.frame = CGRectMake(0, 0, 393, 106)
        self.navBar.backgroundColor = UIColor(red: 0.363, green: 0.142, blue: 0.142, alpha: 1)
        self.view.addSubview(navBar)
    }
}
