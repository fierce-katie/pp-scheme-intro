(define (product-cc l)
    (define (receiver cc)
        (letrec
            ((product (lambda (l)
                (cond
                    ((null? l) (print "NIL") 1)
                    ((= 0 (car l)) (cc 0))
                    (else (print (car l)) (* (car l) (product (cdr l))))
                )
            )))
            (product l)
        )
    )
    (call/cc receiver)
)
