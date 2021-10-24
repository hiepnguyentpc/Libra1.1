import Foundation
import MessageKit
import UIKit

class messages_vc: UIViewController{
    
    
    @IBOutlet weak var mymessages: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mymessages.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        mymessages.dataSource = self
        mymessages.delegate = self
    }
}


extension messages_vc: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let vc = ChatViewController()
        vc.title = "Chat"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension messages_vc: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Vivaan Baid"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
}
