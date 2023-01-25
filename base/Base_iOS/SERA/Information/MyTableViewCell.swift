import UIKit
import SnapKit

class MyTableViewCell: BaseTableViewCell<Cafe> {


    private lazy var hstackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        //view.spacing = 17
        return view
    }()
    
    private lazy var vstackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 5
        return view
    }()
    
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


    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 12, left: 15.5, bottom: 0, right: 15.5))
        contentView.layer.borderColor = UIColor(red: 0.553, green: 0.376, blue: 0.376, alpha: 1).cgColor
        contentView.layer.borderWidth = 1
        contentView.backgroundColor = .white
    }

    override func configure() {
        super.configure()

        backgroundColor = UIColor(red: 0.98, green: 0.941, blue: 0.867, alpha: 1)
        contentView.layer.cornerRadius = 15
        //contentView.clipsToBounds = true
        menuImageView.layer.cornerRadius = 5
        menuImageView.clipsToBounds = true
        addSubviews()
        makeConstraints()
    }

    private func addSubviews() {
        //contentView.addSubview(hstackView)
        contentView.addSubview(vstackView)
        vstackView.addArrangedSubview(nameLabel)
        vstackView.addArrangedSubview(priceLabel)
        
        contentView.addSubview(hstackView)
        //hstackView.addArrangedSubview(menuImageView)
        hstackView.addSubview(menuImageView)
        hstackView.addSubview(vstackView)
        //hstackView.addArrangedSubview(vstackView)
    }

    private func makeConstraints() {

        vstackView.snp.makeConstraints { maker in
            maker.leading.equalTo(contentView.snp.leading).inset(107)
            maker.top.equalTo(contentView.snp.top).inset(31)
        }

        hstackView.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(31)
            maker.leading.equalTo(contentView.snp.leading).inset(34)
        }
        
        
        menuImageView.snp.makeConstraints { maker in
            maker.width.equalTo(73)
            maker.height.equalTo(73)
            //.cornerRadius = 5
            maker.leading.equalTo(contentView.snp.leading).inset(17)
            maker.top.equalTo(contentView.snp.top).inset(14)
        }
        /*
        nameLabel.snp.makeConstraints { maker in
            maker.leading.equalTo(menuImageView.snp.trailing).inset(17)
            maker.top.equalTo(contentView.snp.top).inset(31)
        }
        
        priceLabel.snp.makeConstraints { maker in
            maker.leading.equalTo(menuImageView.snp.trailing).inset(17)
            maker.top.equalTo(nameLabel.snp.bottom).inset(5)
        }
*/
        //nameLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        //priceLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
    }

    override func bind(_ model: Cafe) {
        super.bind(model)
        menuImageView.image = model.menuImage
        nameLabel.text = model.name
        priceLabel.text = model.price
    }
}
