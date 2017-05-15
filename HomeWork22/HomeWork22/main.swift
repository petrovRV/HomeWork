import Foundation

class Father {
    var name = "Mr Brown"
    var wife: Mother!
    
    init() {
        wife = Mother(father: self)
    }
    
    lazy var printFamily: () -> () = {
        [unowned self] in
        print("All family: \(self.name), \(self.wife.name), \(self.wife.children[0].name), \(self.wife.children[1].name)")
    }
    
    lazy var printMom: () -> () = {
        [unowned self] in
        print("Mom: \(self.wife.name)")
    }
    
    lazy var printChildren: () -> () = {
        [unowned self] in
        print("Children: \(self.wife.children[0].name), \(self.wife.children[1].name)")
    }
    
    deinit {
        print("Goodbuy Father")
    }
}

class Mother {
    var name = "Mrs Brown"
    unowned var father: Father
    var children: [Child]!
    
    init(father: Father) {
        self.father = father
        
        let child1 = Child(name: "Bob", mom: self, daddy: father)
        let child2 = Child(name: "Anna", mom: self, daddy: father)
        
        child1.sibling = child2
        child2.sibling = child1
        
        self.children = [child1, child2]
    }
    
    deinit {
        print("Goodbuy Mother")
    }
}

class Child {
    var name: String
    weak var father: Father!
    weak var mother: Mother!
    weak private var _sibling: Child!
    
    init(name: String, mom: Mother, daddy: Father) {
        self.name = name
        mother = mom
        father = daddy
    }
    
    var sibling: Child {
        get {
            return _sibling
        }
        set {
            _sibling = newValue
        }
    }
    
    func giveToy() {
        print(name, "say: \(sibling.name) give me toy!!!")
    }
    
    func giveCandy() {
        print(name, "say: \(mother.name) give me candy!!!")
    }
    
    func buyToy() {
        print(name, "say: \(father.name) say: by me toy!!!")
    }
    
    deinit {
        print("Goodbuy \(name)")
    }
}

class Family {
    var father: Father
    
    init() {
        father = Father()
    }
    
    func getAll() -> (father: Father, mother: Mother,child1 : Child,child2: Child){
        return (father, father.wife, father.wife.children[0], father.wife.children[1])
    }
    
    deinit {
        print("Goodbuy family")
    }
}

if true {
    var family = Family().getAll()
    family.child1.giveToy()
    family.child2.giveCandy()
    family.child1.buyToy()
    
    family.father.printFamily()
}

print("end")
