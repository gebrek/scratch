import Data.List (nub, sort) 
    -- this is importing. it goes " import <Module Name> " in the above example we only import the functions nub and sort from Data.List. However, this can be reversed by prefacing the list of functions with "hiding" ergo { import Data.List hiding ( nub ) } would import all of the functions in Data.List besides nub

import qualified Data.Map as M 
    --the qual. means you have to /qualify/ functions from that module with the module name. ergo { Data.Map.filter }. but because of { as M } the module is aliased with M: { M.filter }

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub
