(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(define-fun phi () Bool 
    (and 
        (or q (not r)) 
        (or (not p) r) 
        (or (not q) r p) 
        (or p q (not q)) 
        (or (not r) q))
    )

(assert phi)
(check-sat)

(define-fun psi () Bool 
    (and 
        (or q (not r)) 
        (or (not p) r) 
        (or (not q) r p) 
        (or p q (not q)) 
        (or (not r) q)
        (or q (not p))
        (or p r (not r))
        (or q r (not r))
        (or p q (not q))
        (or r q (not q))
        (or r p (not p))
        (or q p (not p))
        (or r (not q))
        (or r (not r))
        (or q (not q))
        (or r p (not q))
        (or r (not p) q)
        (or (not r) p q)
    )
)



(define-fun areEquiv () Bool (and (=> phi psi) (=> psi phi)))

(assert (not areEquiv))
(check-sat)