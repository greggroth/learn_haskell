-- file: ch03/BookStore.hs
data BookInfo = Book Int String [String]
                deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

type CustomerID = Int
type Address = [String]

-- record syntax
data Customer = Customer {
        customerID :: CustomerID,
        customerName :: String,
        customerAddress :: Address
    } deriving (Show)

c = Customer 2 "Gregg" ["1084 Dolores St"]
