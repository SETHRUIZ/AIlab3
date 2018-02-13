;; Lab: Heuristic Search
;; CSC 261 
;;
;; File
;;   heuristic.scm
;;
;; Summary
;;   A collection of custom heuristic routines applicable to search
;;    funcitions
;;
;; Provides
;;   (jump-heuristic state)
;;   (jump-heuristic-floored state)
;;   (jump-heuristic-ceiling state)
;;   (jump-heuristic-longer state)

(require "search.scm")
(require "problem.scm")
(require "sort.scm")
(require "node.scm")
(require "jump.scm")
(require "jump-heuristic.scm")
(load "8puzzle.scm")

;;
;; Procedure
;;  jump-heuristic
;;
;; Purpose
;;  Provides a relative cost value associated with the current state
;;
;; Parameters
;;  state, a value
;;
;; Produces
;;  result, a number
;;
;; Preconditions
;;  state is a value that can be used in conjuction with node-action
;;    and node-state
;;
;; Postconditions
;;  result is a numerical value that reflect the relative cost to
;;    a goal state when evaluated aganist the cost of other states 
(define jump-heuristic (lambda (state)
                         (- (node-action state) (node-state state))))

;;
;; Procedure
;;  jump-heuristic-floored
;;
;; Purpose
;;  Provides a relative cost value associated with the current state
;;    
;; Parameters
;;  state, a value
;;
;; Produces
;;  result, a number
;;
;; Preconditions
;;  state is a value that can be used in conjuction with node-action
;;    and node-state
;;
;; Postconditions
;;  result is a numerical value that reflect the relative cost to
;;    a goal state when evaluated aganist the cost of other states 
(define jump-heuristic-floored
  (lambda (state)
    (floor (/ (- (node-action state) (node-state state)) (caddr state)))))

;;
;; Procedure
;;  jump-heuristic-ceiling
;;
;; Purpose
;;  Provides a relative cost value associated with the current state
;;    
;; Parameters
;;  state, a value
;;
;; Produces
;;  result, a number
;;
;; Preconditions
;;  state is a value that can be used in conjuction with node-action
;;    and node-state
;;
;; Postconditions
;;  result is a numerical value that reflect the relative cost to
;;    a goal state when evaluated aganist the cost of other states 
(define jump-heuristic-ceiling
  (lambda (state)
    (ceiling (/ (- (node-action state) (node-state state)) (caddr state)))))

;;
;; Procedure
;;  jump-heuristic-longer
;;
;; Purpose
;;  Provides a relative cost value associated with the current state
;;    
;; Parameters
;;  state, a value
;;
;; Produces
;;  result, a number
;;
;; Preconditions
;;  state is a value that can be used in conjuction with node-action
;;    and node-state
;;
;; Postconditions
;;  result is a numerical value that reflect the relative cost to
;;    a goal state when evaluated aganist the cost of other states 
(define jump-heuristic-longer (lambda (state)
                                (node-action state)))

