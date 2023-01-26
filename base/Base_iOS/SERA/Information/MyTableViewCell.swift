import UIKit
import SnapKit

class MyTableViewCell: BaseTableViewCell<Cafe> {

    
    private lazy var menuImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        //let label = UILabel(frame: CGRect(x: 107, y: 31, width: 74, height: 19))
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black

        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        //let label = UILabel(frame: CGRect(x: 107, y: 55, width: 116, height: 30))
        label.font = .systemFont(ofSize: 13)
        label.textColor = .red
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        //let label = UILabel(frame: CGRect(x: 107, y: 55, width: 116, height: 30))
        label.font = .systemFont(ofSize: 12)
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

        backgroundColor = UIColor(red: 0.945, green: 0.945, blue: 0.937, alpha: 1)
        contentView.layer.cornerRadius = 15
        menuImageView.layer.cornerRadius = 5
        menuImageView.clipsToBounds = true
        addSubviews()
        makeConstraints()
    }
    
    private func addSubviews() {
        contentView.addSubview(menuImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(descriptionLabel)
    }


    private func makeConstraints() {
        menuImageView.snp.makeConstraints { maker in
            maker.leading.equalTo(contentView.snp.leading).inset(17)
            maker.top.equalTo(contentView.snp.top).inset(14)
            maker.width.equalTo(73)
            maker.height.equalTo(73)
        }
        
        nameLabel.snp.makeConstraints { maker in
            maker.top.equalTo(contentView.snp.top).offset(20)
            maker.leading.equalTo(contentView.snp.leading).offset(107)
        }
        
        priceLabel.snp.makeConstraints { maker in
            maker.top.equalTo(contentView.snp.top).offset(24)
            maker.leading.equalTo(contentView.snp.leading).offset(181.5)
        }
       
        descriptionLabel.snp.makeConstraints { maker in
            maker.leading.equalTo(contentView.snp.leading).inset(107)
            maker.top.equalTo(contentView.snp.top).inset(50)
        }


    }

    override func bind(_ model: Cafe) {
        super.bind(model)
        menuImageView.image = model.menuImage
        nameLabel.text = model.name
        priceLabel.text = model.price
        descriptionLabel.text = model.description
    }
}
