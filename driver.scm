;; Lab: Heuristic Search
;; CSC 261 
;;
;; File
;;   driver.scm
;;
;; Summary
;;   A collection of routines demonstrating a comparative result of
;;    A-search with our heuristic, Jerod's heuristic, our other
;;    heuristics, and iterative deepening applied to several meaningful
;;    states
;;

(require "search.scm")
(require "problem.scm")
(require "node.scm")
(require "jump.scm")
(load "8puzzle.scm")
(load "compiled/jump_scm.zo") 
(load "astar.scm")
(load "heuristic.scm")
(load "compiled/jump-heuristic_scm.zo")


(define jump (jump-problem 25)) 
(define zero-fun (lambda (x) 0))

(define jump-state (list 10 1 1))
(display "A* search with jump-heuristic for state (10 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic)) (newline)
(display "A* search with jerod-jump-heuristic for state (10 1 1):") (newline)
(display (A-search jump-state jump weinman-jump-heuristic)) (newline)
(display "IDS result for state (10 1 1):") (newline)
(display (iterative-deepening-search jump-state jump)) (newline)
(display "A* search with jump-heuristic-ceiling for state (10 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic-ceiling)) (newline)
(display "A* search with jump-heuristic-floored for state (10 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic-floored)) (newline)(newline)

(define jump-state (list 15 5 2))
(display "A* search with jump-heuristic for state (15 5 2):") (newline)
(display (A-search jump-state jump jump-heuristic)) (newline)
(display "A* search with jerod-jump-heuristic for state (15 5 2):") (newline)
(display (A-search jump-state jump weinman-jump-heuristic)) (newline)
(display "IDS result for state (15 5 2):") (newline)
(display (iterative-deepening-search jump-state jump)) (newline)
(display "A* search with jump-heuristic-ceiling for state (15 5 2):") (newline)
(display (A-search jump-state jump jump-heuristic-ceiling)) (newline)
(display "A* search with jump-heuristic-floored for state (15 5 2):") (newline)
(display (A-search jump-state jump jump-heuristic-floored)) (newline)(newline)

(define jump-state (list 5 4 3))
(display "A* search with jump-heuristic for state (5 4 3):") (newline)
(display (A-search jump-state jump jump-heuristic)) (newline)
(display "A* search with jerod-jump-heuristic for state (5 4 3):") (newline)
(display (A-search jump-state jump weinman-jump-heuristic)) (newline)
;; this following call to IDS takes a long time to run
;(display (iterative-deepening-search jump-state jump)) (newline)
(display "A* search with jump-heuristic-ceiling for state (5 4 3):") (newline)
(display (A-search jump-state jump jump-heuristic-ceiling)) (newline)
(display "A* search with jump-heuristic-floored for state (5 4 3):") (newline)
(display (A-search jump-state jump jump-heuristic-floored)) (newline)(newline)

(define jump-state (list 30 15 5))
(display "A* search with jump-heuristic for state (30 15 5):") (newline)
(display (A-search jump-state jump jump-heuristic)) (newline)
(display "A* search with jerod-jump-heuristic for state (30 15 5):") (newline)
(display (A-search jump-state jump weinman-jump-heuristic)) (newline)
(display "IDS result for state (30 15 5):") (newline)
(display (iterative-deepening-search jump-state jump)) (newline)
(display "A* search with jump-heuristic-ceiling for state (30 15 5):") (newline)
(display (A-search jump-state jump jump-heuristic-ceiling)) (newline)
(display "A* search with jump-heuristic-floored for state (30 15 5):") (newline)
(display (A-search jump-state jump jump-heuristic-floored)) (newline)(newline)

(define jump-state (list 40 1 1))
(display "A* search with jump-heuristic for state (40 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic)) (newline)
(display "A* search with jerod-jump-heuristic for state (40 1 1):") (newline)
(display (A-search jump-state jump weinman-jump-heuristic)) (newline)
(display "IDS result for state (40 1 1):") (newline)
(display (iterative-deepening-search jump-state jump)) (newline)
(display "A* search with jump-heuristic-ceiling for state (40 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic-ceiling)) (newline)
(display "A* search with jump-heuristic-floored for state (40 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic-floored)) (newline)(newline)

(define jump-state (list 50 1 1))
(display "A* search with jump-heuristic for state (50 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic)) (newline)
(display "A* search with jerod-jump-heuristic for state (50 1 1):") (newline)
(display (A-search jump-state jump weinman-jump-heuristic)) (newline)
(display "IDS result for state (50 1 1):") (newline)
(display (iterative-deepening-search jump-state jump)) (newline)
(display "A* search with jump-heuristic-ceiling for state (50 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic-ceiling)) (newline)
(display "A* search with jump-heuristic-floored for state (50 1 1):") (newline)
(display (A-search jump-state jump jump-heuristic-floored)) (newline)


