class ChessBoard {
    var board = [String: String]()
    
    private func createBoard() {
        
        let symb = ["a", "b" , "c", "d", "e", "f", "g", "h"]
        var point: String, res: Bool
        for i in 1...8 {
            for j in 1...8 {
                point = symb[j-1] + String(i)
                res = i % 2 == j % 2
                board[point] = res ? "black" : "white"
            }
        }
    }
    
    subscript (column: String, row: Int) -> String {
        get {
            let point = column + String(row)
            return board[point] ?? "nil"
        }
    }
    
    init() {
        createBoard()
    }
}

let board = ChessBoard()
print(board["h", 8])



