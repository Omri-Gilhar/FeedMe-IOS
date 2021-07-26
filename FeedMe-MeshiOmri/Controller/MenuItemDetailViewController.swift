import UIKit

class MenuItemDetailViewController: UIViewController {
    
    var menuItem: MenuItem!
    var delegate: AddToFavoritesDelegate?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var prerpTimeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addToFaveButton: UIButton!
    
    @IBAction func addToFaveButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.addToFaveButton.transform = CGAffineTransform(scaleX: 3, y: 3)
            self.addToFaveButton.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
        delegate?.added(menuItem: menuItem)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        setupDelegate()
    }
    

    func updateUI() {
        titleLabel.text = menuItem.name
        prerpTimeLabel.text = menuItem.prepTime
        descriptionLabel.text = menuItem.description
        addToFaveButton.layer.cornerRadius = 5
        MenuController.shared.fetchImage(url: menuItem.imageURL) { image in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    func setupDelegate() {
        if let navController = tabBarController?.viewControllers?.last as? UINavigationController,
            let faveTableViewController = navController.viewControllers.first as? FavorieTableViewController {
            delegate = faveTableViewController
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

