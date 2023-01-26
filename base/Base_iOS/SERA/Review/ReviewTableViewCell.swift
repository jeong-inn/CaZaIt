import UIKit
import SnapKit

class ReviewTableViewCell: ReviewBaseTableViewCell<Review> {


    private lazy var hstackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 5
        return view
    }()

    
    private lazy var starStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 2.27
        return view
    }()
    

        let onestar = UIImageView(image: UIImage(systemName: "star",
                                                     withConfiguration: UIImage.SymbolConfiguration(pointSize: 21, weight: .bold, scale: .medium))?.withTintColor(UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1), renderingMode: .alwaysOriginal))
    
       let twostar = UIImageView(image: UIImage(systemName: "star",
                                                     withConfiguration: UIImage.SymbolConfiguration(pointSize: 21, weight: .bold, scale: .medium))?.withTintColor(UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1), renderingMode: .alwaysOriginal))
    
       let threestar = UIImageView(image: UIImage(systemName: "star",
                                                     withConfiguration: UIImage.SymbolConfiguration(pointSize: 21, weight: .bold, scale: .medium))?.withTintColor(UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1), renderingMode: .alwaysOriginal))
    
       let fourstar = UIImageView(image: UIImage(systemName: "star",
                                                     withConfiguration: UIImage.SymbolConfiguration(pointSize: 21, weight: .bold, scale: .medium))?.withTintColor(UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1), renderingMode: .alwaysOriginal))
    
       let fivestar = UIImageView(image: UIImage(systemName: "star",
                                                     withConfiguration: UIImage.SymbolConfiguration(pointSize: 21, weight: .bold, scale: .medium))?.withTintColor(UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1), renderingMode: .alwaysOriginal))
    
    
    private lazy var starLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 11)
        label.textColor = .black

        return label
    }()
    
    private lazy var nicknameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 11)
        label.textColor = .black

        return label
    }()
    
    private lazy var separator: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 11)
        label.textColor = .black
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 11)
        label.textColor = .black
        return label
    }()
    
    private lazy var commentLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .black
        return label
    }()

    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 12, left: 15.5, bottom: 0, right: 15.5))
        contentView.layer.borderColor = UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1).cgColor
        contentView.layer.borderWidth = 1
        contentView.backgroundColor = .white
    }

    override func configure() {
        super.configure()

        backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        contentView.layer.cornerRadius = 15
        addSubviews()
        makeConstraints()
    }

    private func addSubviews() {
        contentView.addSubview(starStackView)
        //starStackView.addArrangedSubview(starLabel)
        starStackView.addArrangedSubview(onestar)
        starStackView.addArrangedSubview(twostar)
        starStackView.addArrangedSubview(threestar)
        starStackView.addArrangedSubview(fourstar)
        starStackView.addArrangedSubview(fivestar)

        
        contentView.addSubview(hstackView)
        hstackView.addArrangedSubview(nicknameLabel)
        hstackView.addArrangedSubview(dateLabel)
        
        
        contentView.addSubview(starStackView)
        contentView.addSubview(hstackView)
        contentView.addSubview(commentLabel)

        
    }

    private func makeConstraints() {

        starStackView.snp.makeConstraints { maker in
            maker.top.equalTo(contentView.snp.top).inset(11)
            maker.leading.equalTo(contentView.snp.leading).inset(18)
        }
        
        hstackView.snp.makeConstraints { maker in
            maker.top.equalTo(contentView.snp.top).inset(41)
            maker.leading.equalTo(contentView.snp.leading).inset(21)
        }
        
        commentLabel.snp.makeConstraints { maker in
            maker.top.equalTo(contentView.snp.top).inset(70)
            maker.leading.equalTo(contentView.snp.leading).inset(21)
        }

    }

    override func bind(_ model: Review) {
        super.bind(model)
        starLabel.text = model.star //오른쪽 바꿔야함 cell?.imageView?.image = UIImage.init(named: menu.menuImage!)
        nicknameLabel.text = model.nickname
        dateLabel.text = model.date
        commentLabel.text = model.comment
    }
}
