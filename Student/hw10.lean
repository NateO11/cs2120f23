-- Prob 1

variable (Dog : Type)
variable (Cat : Type )
variable (likes : Dog → Cat → Prop)

#check ∀ (d : Dog), ∃ (c : Cat), likes d c

-- Prob 2

variable (d: Dog)
variable (w: Dog)
variable (g: Dog)
variable (likes : Dog → Dog → Prop)
#check (likes d g ∧ likes g w) → likes d w


-- Prob 3
variable (likess : Cat → Cat → Prop)
#check ∀ (c d : Cat), likess c d → likess d c

-- Prob 4
#check ∀ (c : Cat), likess c c

-- Prob 5

#check ∀ (c d : Cat), (∀ (cat : Cat), likess c cat) → likess c d


example : (∀ (cat1 : Cat), ∀ (cat2 : Cat), likess cat1 cat2) → ∀ (c d : Cat), likess c d :=
  λ a b c => a b c
