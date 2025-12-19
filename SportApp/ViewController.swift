import UIKit

class ViewController: UIViewController {

    
    private let emailText: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.returnKeyType = .next
        tf.textContentType = .emailAddress
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    private let passwordText: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.borderStyle = .roundedRect
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        tf.returnKeyType = .done
        tf.textContentType = .password
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    private let loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Giriş yap", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemGreen
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    private let signUpButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Kayıt ol", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 5
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginButton)
        view.addSubview(signUpButton)
        view.addSubview(emailText)
        view.addSubview(passwordText)
        setup()
        
        loginButton.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signupBtnTapped), for: .touchUpInside)
        
        
        
    }
    
    func setup() {
        NSLayoutConstraint.activate([
            
            emailText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            emailText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            passwordText.topAnchor.constraint(equalTo: emailText.bottomAnchor, constant: 20),
            passwordText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            loginButton.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            
            ])
            
    }
    
    @objc func loginBtnTapped() {
        
        //backend auth kontrolü
        let tabBar = TabBarController()

        guard
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
            let sceneDelegate = windowScene.delegate as? SceneDelegate,
            let window = sceneDelegate.window
        else { return }

        window.rootViewController = tabBar
        window.makeKeyAndVisible()
        
    }
    
    @objc func signupBtnTapped() {
        
        //to signup vc
        
    }


}

