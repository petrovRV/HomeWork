/*1*/
enum ChessPieces1 {
    case King(color: Color, x: String, y: Int)
    case Queen(color: Color, x: String, y: Int)
    case Rook(color: Color, x: String, y: Int)
    case Bishop(color: Color, x: String, y: Int)
    case Knight(color: Color, x: String, y: Int)
    case Pawn(color: Color, x: String, y: Int)
    
    enum Color {
        case White
        case Black
    }
}

var arrayChessPieces1 = [ChessPieces1]()
arrayChessPieces1.append(.King(color: .White, x: "c", y: 8))
arrayChessPieces1.append(.Rook(color: .Black, x: "a", y: 1))
arrayChessPieces1.append(.Queen(color: .White, x: "b", y: 2))
arrayChessPieces1.append(.Rook(color: .White, x: "h", y: 2))
arrayChessPieces1.append(.Knight(color: .Black, x: "c", y: 3))
arrayChessPieces1.append(.Pawn(color: .Black, x: "b", y: 4))
arrayChessPieces1.append(.Pawn(color: .White, x: "g", y: 7))

/*2*/
enum ChessPieces: String {
    case King = "King"
    case Queen = "Queen"
    case Rook = "Rook"
    case Bishop = "Bishop"
    case Knight = "Knight"
    case Pawn = "Pawn"
}

enum Color: String {
    case White = "white"
    case Black = "black"
}

enum Column: String {
    case a, b, c, d, e, f, g, h
}

enum Row: String {
    case _1 = "1", _2 = "2", _3 = "3", _4 = "4", _5 = "5", _6 = "6", _7 = "7", _8 = "8"
}

func showChessPieces(arr: [(name: ChessPieces, color: Color, x: Column, y: Row)]) {
    var name: String, color: String, coordinate: String
    for chessman in arr {
        name = chessman.name.rawValue
        color = chessman.name.rawValue
        coordinate = chessman.x.rawValue + chessman.y.rawValue
        
        print("\(name)(color: \(color), coordinate: \(coordinate))")
    }
}

var arrayChessPieces = [(name: ChessPieces, color: Color, x: Column, y: Row)]()

arrayChessPieces.append((.King, .White, .c, ._8))
arrayChessPieces.append((.Rook, .Black, .a, ._1))
arrayChessPieces.append((.Queen, .White, .b, ._2))
arrayChessPieces.append((.Rook, .White, .h, ._2))
arrayChessPieces.append((.Knight, .Black, .c, ._3))
arrayChessPieces.append((.Pawn, .Black, .b, ._4))
arrayChessPieces.append((.Pawn, .White, .g, ._7))

showChessPieces(arr: arrayChessPieces)

/*3*/
func createBoard() -> [String: String] {
    var board = [String: String]()
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8"]
    let black = "\u{2B1B}", white = "\u{2B1C}"
    
    var cordinates: String, color: String
    for i in 0..<letters.count {
        for j in 0..<numbers.count {
            cordinates = letters[i] + numbers[j]
            color = i % 2 != j % 2 ? black : white
            
            board.updateValue(color, forKey: cordinates)
        }
    }
    
    return board
}

func addChessman(board: inout [String: String], chessPieces: [(name: ChessPieces, color: Color, x: Column, y: Row)]) {
    let whiteChessPieces = [ "King": "\u{2654}", "Queen": "\u{2655}", "Rook": "\u{2656}", "Bishop": "\u{2657}", "Knight":  "\u{2658}", "Pawn":  "\u{2659}"]
    let blackChessPieces = [ "King": "\u{265A}", "Queen": "\u{265B}", "Rook": "\u{265C}", "Bishop": "\u{265D}", "Knight":  "\u{265E}", "Pawn":  "\u{265F}"]
    
    var figure: String, name: String, color: Color, coordinate: String
    for chessman in chessPieces {
        name = chessman.name.rawValue
        color = chessman.color
        coordinate = chessman.x.rawValue + chessman.y.rawValue
        if color == .White {
            figure = whiteChessPieces[name]!
        } else {
            figure = blackChessPieces[name]!
        }
        
        board.updateValue(figure, forKey: coordinate)
    }
}

func showBoard(board: [String: String]) {
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    var cordinates: String, line: String
    for x in numbers {
        line = ""
        for y in letters {
            cordinates = y + x
            line += board[cordinates]!
        }
        print(line)
    }
}

var chessBoard = createBoard()
addChessman(board: &chessBoard,chessPieces: arrayChessPieces)
showBoard(board: chessBoard)