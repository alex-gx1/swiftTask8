import UIKit
import Foundation

class ViewController: UIViewController {
    
    var names: [String] = ["Alfred", "Alexandr", "Ivan"]

    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
  
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var configuration = UIListContentConfiguration.cell()
        configuration.text = names[indexPath.row]
        cell.contentConfiguration = configuration
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}


