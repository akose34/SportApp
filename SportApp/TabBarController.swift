import UIKit

class TabBarController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabs()
        
    }
    
    func setupTabs() {
        let feedViewController = FeedVC()
        feedViewController.tabBarItem = UITabBarItem(title: "Akış", image: UIImage(systemName: "house"), tag: 1)
        let shareViewController = SharePostVC()
        shareViewController.tabBarItem = UITabBarItem(title: "Paylaş", image: UIImage(systemName: "square.and.arrow.up"), tag: 2)
        let tournamentViewController = TournamentsVC()
        tournamentViewController.tabBarItem = UITabBarItem(title: "Turnuvarlar", image: UIImage(systemName: "calendar"), tag: 3)
        let findRivalViewController = FindRivalVC()
        findRivalViewController.tabBarItem = UITabBarItem(title: "Rakip Bul", image: UIImage(systemName: "person.2"), tag: 4)
        let profileViewController = ProfileVC()
        profileViewController.tabBarItem = UITabBarItem(title: "Profil", image: UIImage(systemName: "person"), tag: 5)
        
        
        let feedNav = UINavigationController(rootViewController: feedViewController)
        let shareNav = UINavigationController(rootViewController: shareViewController)
        let tournamentNav = UINavigationController(rootViewController: tournamentViewController)
        let findRivalNav = UINavigationController(rootViewController: findRivalViewController)
        let profileNav = UINavigationController(rootViewController: profileViewController)
        viewControllers = [feedNav,shareNav,tournamentNav,findRivalNav,profileNav]

    }
    
}
