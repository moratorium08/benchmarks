(set-logic HORN)

(declare-fun |diff_bool| ( Bool Bool ) Bool)
(declare-fun |incorrect| ( ) Bool)
(declare-fun |mem| ( Int (List Int) Bool ) Bool)
(declare-fun |ins| ( Int (List Int) (List Int) ) Bool)

(assert
  (forall ( (A Int) (B (List Int)) (v_2 Bool) ) 
    (=>
      (and
        (and (= B nil) (= v_2 false))
      )
      (mem A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (mem C B v_4)
        (and (= v_4 true) (= D (insert A B)) (= v_5 true))
      )
      (mem C D v_5)
    )
  )
)
(assert
  (forall ( (A (List Int)) (B Int) (C (List Int)) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (mem B A v_3)
        (and (= v_3 false) (= C (insert B A)) (= v_4 true))
      )
      (mem B C v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (v_4 Bool) (v_5 Bool) ) 
    (=>
      (and
        (mem C B v_4)
        (and (= v_4 false) (= D (insert A B)) (not (= C A)) (= v_5 false))
      )
      (mem C D v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) ) 
    (=>
      (and
        (and (= C (insert A nil)) (= B nil))
      )
      (ins A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E (List Int)) ) 
    (=>
      (and
        (and (= E (insert C D)) (<= C (+ (- 1) A)) (= D (insert A B)))
      )
      (ins C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C (List Int)) (D Int) (E (List Int)) (F (List Int)) ) 
    (=>
      (and
        (ins D B C)
        (and (= F (insert A C)) (>= D A) (= E (insert A B)))
      )
      (ins D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B (List Int)) (C Int) (D (List Int)) (E Bool) (F Bool) ) 
    (=>
      (and
        (diff_bool E F)
        (ins A B D)
        (mem C B F)
        (mem C D E)
        (<= C (+ (- 1) A))
      )
      incorrect
    )
  )
)
(assert
  (forall ( (v_0 Bool) (v_1 Bool) ) 
    (=>
      (and
        (and true (= v_0 true) (= v_1 false))
      )
      (diff_bool v_0 v_1)
    )
  )
)
(assert
  (forall ( (v_0 Bool) (v_1 Bool) ) 
    (=>
      (and
        (and true (= v_0 false) (= v_1 true))
      )
      (diff_bool v_0 v_1)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        incorrect
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
