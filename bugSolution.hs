The solution involves using `takeWhile` to limit the evaluation to only a finite number of elements from the infinite list. This ensures termination.

```haskell
import Data.List

main :: IO ()
main = do
  let evenNumbers = takeWhile (< 20) [x | x <- [1..], even x]
  print evenNumbers
```

Alternatively, we can use a more efficient approach with `filter` and `take`:

```haskell
import Data.List

main :: IO ()
main = do
  let evenNumbers = take 10 (filter even [1..])
  print evenNumbers
```
This version is more efficient because `filter` operates lazily.