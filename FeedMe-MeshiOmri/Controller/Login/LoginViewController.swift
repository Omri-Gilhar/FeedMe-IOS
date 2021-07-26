import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var errorLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
	
        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements() {
        errorLbl.alpha=0
          }

    @IBAction func loginBTNTaped(_ sender: Any) {
        let email=self.emailTextField.text!
        let password=self.passwordTextField.text!
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password,completion: {[weak self] result, error in
            guard let strongSelf = self else{
                return
            }
            guard error == nil else{
                return
        }
        
            UserData.userEmail=email
            strongSelf.transitionToMenu()


          })

          
            
        }
      
        
    
    func transitionToMenu(){
        
        let homeView=storyboard?.instantiateViewController(identifier: "homeBar")
        view.window?.rootViewController=homeView
        view.window?.makeKeyAndVisible()
        
    }
}
