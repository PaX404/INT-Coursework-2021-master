(define (problem driver_and_passengers)
    (:domain driver_and_passengers)
(:objects 
    car - vehicle
    r s t u v z - location
    man woman - passenger
)

(:init
    (= (totalDistance) 0)
    (vehicleAtLocation car u)
    (onRoad car r s)
    (= (distance r s) 200)
    (onRoad car s t)
    (= (distance s t) 380) 
    (onRoad car r t)
    (= (distance r t) 500)

    (onRoad car u r)
    (= (distance u r) 360)
    (onRoad car u z)
    (= (distance u z) 800)

    (onRoad car z t)
    (= (distance z t) 600)
    
    
    (onRoad car s r)
    (= (distance s r) 200)
    (onRoad car t s)
    (= (distance t s) 380) 
    (onRoad car t r)
    (= (distance t r) 500)

    (onRoad car r u)
    (= (distance r u) 360)
    (onRoad car z u)
    (= (distance z u) 800)

    (onRoad car t z)
    (= (distance t z) 600)
    
    (passengerAtLocation man z)
    (passengerAtLocation woman t)
    
    
)

(:goal (and
    (passengerAtLocation man s)
    (passengerAtLocation woman r)
))
(:metric minimize (totalDistance))
)