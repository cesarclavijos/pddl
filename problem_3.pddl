(define (problem problema3)

(:domain transporte)
(:objects 
    ambulancia - vehicle
    L1 - localizacion
    L2 - localizacion
    L3 - localizacion
    L4 - localizacion
    L5 - localizacion
    L6 - localizacion
    
    L7 - localizacion
    P1 - paciente
    P2 - paciente
)

(:init
    (ubicacion ambulancia L1)
    (ruta L1 L2)
    (ruta L2 L4)
    (ruta L4 L3)
    (ruta L4 L5)
    (ruta L5 L4)
    (ruta L5 L7)
    (ruta L7 L5)
    (ruta L4 L6)
    (ruta L2 L1)
    (ruta L4 L2)
    (ruta L6 L4)
    (ruta L3 L4)
    (herido P1 L7)
    (herido P2 L6)
    (empty ambulancia)
)

(:goal (and
    (herido P1 L1)
    (herido P2 L1)
))


)
