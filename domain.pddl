;Header and description

(define (domain transporte)

;remove requirements that are not needed
(:requirements :strips :typing  :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    localizacion vehicle paciente - object
     
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (ruta ?ciudad1 - localizacion ?ciudad2 - localizacion)
    (ubicacion ?vehicle1 - vehicle ?ciudad3 - localizacion)
    (herido ?paciente1 - paciente ?ciudad4 - localizacion )
    (empty ?ambulancia - vehicle)
    
)


(:functions ;todo: define numeric functions here
)

;define actions here
(:action conducir
    :parameters (?v - vehicle ?l1 - localizacion ?l2 - localizacion)
    :precondition (and 
        (ubicacion ?v ?l1)
        (ruta ?l1 ?l2)
    )
    :effect (and
        (not(ubicacion ?v ?l1))
        (ubicacion ?v ?l2)
    
     )
)

(:action subir-paciente
    :parameters (?p - paciente ?l1 - localizacion ?v - vehicle)
    :precondition (and 
        (ubicacion ?v ?l1)
        (herido ?p ?l1)
        (empty ?v)
    )
    :effect (and
        (not (herido ?p ?l1))
        (not(empty ?v))
    
     )
)

(:action bajar-paciente
    :parameters (?p - paciente ?l1 ?l2 - localizacion ?v - vehicle)
    :precondition (and 
        (not (herido ?p ?l1))
        (ubicacion ?v ?l2)
        (not(empty ?v))
    
    )
    :effect (and
        (herido ?p ?l2)
        (empty ?v)
    
    
     )
)

)