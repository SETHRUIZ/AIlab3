(require "search.scm")
(require "problem.scm")
(require "sort.scm")
(require "node.scm")
(require "jump.scm")
(require "jump-heuristic.scm")
(load "8puzzle.scm")

(define jump-heuristic-bottom
  (lambda (state)
    (floor (/ (- (node-action state) (node-state state)) (caddr state)))))

(define jump-heuristic-top
  (lambda (state)
    (ceiling (/ (- (node-action state) (node-state state)) (caddr state)))))

(define jump-heuristic (lambda (state)
                              (- (node-action state) (node-state state))))

(define jump-heuristic-longer (lambda (state)
                               (node-action state)))

