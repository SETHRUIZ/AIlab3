;; Lab: Heuristic Search
;; CSC 261 
;;
;; File
;;   astar.scm
;;
;; Summary
;;   An implementation of the A* search algorithm
;;   Modified from an implementation of Uniform Cost Search provided by Jerod Weinman
;; Provides
;;  (A-search start-state problem heuristic)

(require "search.scm")
(require "problem.scm")
(require "sort.scm")
(require "node.scm")
(require "jump.scm")
(require "jump-heuristic.scm")
(load "8puzzle.scm")

;; Procedure
;;  A-search
;;
;; Purpose
;;   Find a solution to a problem using A* search
;;
;; Parameters
;;   start-state, a value
;;   problem, a problem (list)
;;   heuristic, a heuristic
;;
;; Produces
;;   result, a list
;;
;; Preconditions
;;   [None]
;;
;; Postconditions
;;   result is a list of the form (solution num-expansions), where
;;   solution is a list of actions that can be taken to reach a goal
;;   state from start-state, or #f if no solution could be found
;;
(define A-search
  (lambda (start-state problem heuristic)
    (search
     start-state
     problem
     ;; Enqueuing procedure
     (lambda (new-nodes sorted-queue)
       ;; Sort the new new nodes according to path cost
       (let ((sorted-children (list-keyed-insertion-sort
                               new-nodes
                               node-total-cost
                               <=)))
         ;; Insert the new nodes efficiently into the already-sorted frontier
         (let insert ((remaining sorted-children) ;; Items to insert
                      (queue sorted-queue))       ;; List of sorted nodes
           (cond
             ((null? remaining) ;; Nothing left to insert?
              queue) ;; Return the queue (which is sorted)
             ((null? queue) ;; If the queue is empty, we can simply return the
              remaining)      ;; remaining items, because they're already sorted
             ((< (node-total-cost (car remaining))
                 (node-total-cost (car queue)))  
              (cons (car remaining) ;; List of the first remaining item and the
                    (insert (cdr remaining) queue))) ;;  rest inserted into queue
             (else
              (cons (car queue) ;; List of the queue front and insert remaining
                    (insert remaining (cdr queue)))))))) ;;  into rest of queue
     ;; Heuristic function
     heuristic))) 
