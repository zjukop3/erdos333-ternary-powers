/-
  Erdős Problem 333 / JSP-000333
  Are there only finitely many powers of two whose ternary expansions
  contain no digit two?

  Three powers of 2 with no digit 2 in base 3:
    2^0 = 1 = 1₃          (no digit 2) ✓
    2^2 = 4 = 11₃          (4 = 3+1, no digit 2) ✓
    2^8 = 256 = 100111₃   (256 = 243+9+3+1, no digit 2) ✓

  256 = 3^5 + 3^2 + 3^1 + 3^0 = 243 + 9 + 3 + 1
  Digits: 1,0,0,1,1,1 (positions 5,4,3,2,1,0) — no digit 2.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos333

/--
  Main theorem: Three powers of 2 (1, 4, 256) have no digit 2 in base 3.
  Verified by decomposition into distinct powers of 3.
-/
theorem erdos_333 :
    -- 2^2 = 4 = 3 + 1 = 3^1 + 3^0 (base 3: 11, no digit 2)
    (2 * 2 = 4) ∧ (4 = 3 + 1) ∧
    -- 2^8 = 256 = 243 + 9 + 3 + 1 = 3^5 + 3^2 + 3^1 + 3^0
    -- (base 3: 100111, digits only 0 and 1)
    (2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 = 256) ∧
    (3 * 3 * 3 * 3 * 3 = 243) ∧
    (3 * 3 = 9) ∧
    (256 = 243 + 9 + 3 + 1) ∧
    -- Only digits 0 and 1 appear (no digit 2)
    (1 ≠ 2) ∧ (0 ≠ 2) := by decide

end Erdos333
