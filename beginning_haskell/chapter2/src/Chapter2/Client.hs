data Client = GovOrg String
            | Company String Integer Person String
            | Individual Person Bool
            deriving Show

data Person = Person String String Gender
            deriving Show

data Gender = Male | Female | Unknown
            deriving Show

clientName :: Client -> String
clientName (GovOrg name) = name
clientName (Company name _ _ _) = name
clientName (Individual (Person fname lname _ ) _) = fname ++ " " ++ lname

fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

data ClientR = GovOrgR  { clientRName :: String }
             | CompanyR { clientRName :: String
                        , companyId :: Integer
                        , person :: PersonR
                        , duty :: String }
             | IndividualR { person :: PersonR }
             deriving Show

data PersonR = PersonR { firstName :: String
                       , lastName :: String }
                       deriving Show

greet :: ClientR -> String
greet IndividualR { person = PersonR { firstName = fn } } = "Hi, " ++ fn
greet CompanyR    { clientRName = c }                     = "Hello, " ++ c
greet GovOrgR     { }                                     = "Welcome"

