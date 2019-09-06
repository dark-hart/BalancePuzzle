;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;               The Balance Puzzle                ;;
;;                                                 ;;
;;                 Yvonne Dark                     ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 
(begin

  (define (first-weigh group-1 group-2)
    (cond ((< group-1 group-2) 1)
	  ((> group-1 group-2) 2)
	  (else 3)))

  (define (second-weigh-group1 first second)
    (if (< first second) 'first 'second))
  
  (define (second-weigh-group2 third fourth)
    (if (< third fourth) 'third 'fourth))
  
  (define (second-weigh-group3 fifth sixth)
    (if (< fifth sixth) 'fifth 'sixth))

  (define (weigh weight-list)
    (let ((first (car weight-list))
	  (second (cadr weight-list))
	  (third (caddr weight-list))
	  (fourth (cadddr weight-list))
	  (fifth (cadddr (cdr weight-list)))
	  (sixth (cadddr (cddr weight-list))))
      (let ((lower-group (first-weigh
			  (+ first second)
			  (+ third fourth))))

	(cond ((equal? lower-group 1) (second-weigh-group1 first second))
	      ((equal? lower-group 2) (second-weigh-group2 third fourth))
	      ((equal? lower-group 3) (second-weigh-group3 fifth sixth))))))

  (define (find-lowest-weight)
    (let ((weight-list (read)))
      (weigh weight-list)))
)
