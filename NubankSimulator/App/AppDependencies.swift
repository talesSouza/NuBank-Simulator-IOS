import Foundation

class AppDependencies {
    
    func setup(dependencies: [ModuleDependencies]? = nil) {
        
        let dependencies = dependencies ?? [CoreModuleDependencies(),
                                            LoginModuleDependencies()]
        
        dependencies.forEach { $0.setupDependencies() }
    }
}
