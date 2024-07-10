import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData() {
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                print("Unable to complete your request. Please check your internet connection")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                print("Invalid response from the server. Please try again.")
                return
            }
            
            guard let data = data else {
                print("The data received from the server was invalid. Please try again.")
                return
            }

            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    DispatchQueue.main.async {
                        self.stationIDLabel.text = json["stationID"] as? String
                        self.stationNameLabel.text = json["stationName"] as? String
                        self.stationAddressLabel.text = json["stationAddress"] as? String
                    }
                }
            } catch {
                print("The data received from the server was invalid. Please try again.")
            }
        }
        
        task.resume()
    }
}
