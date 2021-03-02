(define (problem problema2)

(:domain transporte)
(:objects 
    ambulancia - vehicle
    L1 - localizacion
    L2 - localizacion
    L3 - localizacion
    L4 - localizacion
    P1 - paciente
    P2 - paciente
    P3 - paciente
    P4 - paciente
)

(:init
    (ubicacion ambulancia L1)
    (ruta L1 L2)
    (ruta L2 L4)
    (ruta L4 L3)
    (ruta L2 L1)
    (ruta L4 L2)
    (ruta L3 L4)
    (herido P1 L4)
    (herido P2 L3)
    (herido P3 L2)
    (herido P4 L4)
    (empty ambulancia)
)

(:goal (and
    (herido P1 L1)
    (herido P2 L1)
    (herido P3 L1)
    (herido P4 L1)
))


)
