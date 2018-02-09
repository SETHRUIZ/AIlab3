(require "search.scm")
(require "problem.scm")
(require "node.scm")
(require "jump.scm")
(load "8puzzle.scm")
(load "compiled/jump_scm.zo") 
(load "astar.scm")
(load "heuristic.scm")

(define eight-puzzle-state (random-eight-puzzle-state 10)) 
(display (eight-puzzle-state-board-list eight-puzzle-state))
(eight-puzzle-misplaced eight-puzzle-state)

(define eight-puzzle-start-node
  (node-init eight-puzzle-state
             eight-puzzle-misplaced))

(node-path-cost eight-puzzle-start-node)
(node-total-cost eight-puzzle-start-node)

(define eight-puzzle (eight-puzzle-problem))


(define successors 
  (problem-expand-node eight-puzzle
                       eight-puzzle-start-node
                       eight-puzzle-misplaced))

(map node-total-cost successors)

(define jump (jump-problem 10)) 

(define zero-fun (lambda (x) 0))

(define jump-state (list 100 1 1))

(define jump-start-node (node-init jump-state zero-fun))

(define successors
  (problem-expand-node jump
                       jump-start-node
                       zero-fun)) 

