import UIKit
import Firebase

class FavorieTableViewController: UITableViewController, AddToFavoritesDelegate {
    
    var menuItems = [MenuItem]()
    

    @IBAction func unwindToFaveList(segue: UIStoryboardSegue) {
        if segue.identifier == "DismissConfirmation" {
            menuItems.removeAll()
            tableView.reloadData()
            updateBadgeNumber()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        fitDetailLabels()
    }
    
    override func viewWillLayoutSubviews() {
        fitDetailLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCellIdentifier", for: indexPath)
        configure(cell: cell, forItemAt: indexPath)
        return cell
    }
    
    func configure(cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let menuItem = menuItems[indexPath.row]
        cell.textLabel?.text = menuItem.name
        cell.detailTextLabel?.text = menuItem.prepTime
        
        MenuController.shared.fetchImage(url: menuItem.imageURL) { image in
            guard let image = image else { return }
            
            DispatchQueue.main.async {
                guard let currentIndexPath = self.tableView.indexPath(for: cell) else { return }
                guard currentIndexPath == indexPath else { return }
                
                cell.imageView?.image = image
                
                self.fitImage(in: cell)
            }
        }
    }
    

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            menuItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            updateBadgeNumber()
        }
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        fitDetailLabel(in: cell)
    }

    
    func added(menuItem: MenuItem) {

        menuItems.append(menuItem)
        
        let count = menuItems.count
        let indexPath = IndexPath(row: count - 1, section: 0)
        
        tableView.insertRows(at: [indexPath], with: .automatic)
        
        updateBadgeNumber()
    }
    
    func updateBadgeNumber() {
        let badgeValue = 0 < menuItems.count ? "\(menuItems.count)" : nil
        navigationController?.tabBarItem.badgeValue = badgeValue
    }
}
