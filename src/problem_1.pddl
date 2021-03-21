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
    (onRoad car z v)
    (= (distance z v) 220)
    (onRoad car s v)
    (= (distance s v) 630)
    (onRoad car z t)
    (= (distance z t) 600)
    
    (passengerAtLocation man r)
    (passengerAtLocation woman s)
    
    
)

(:goal (and
    (passengerAtLocation man t)
    (passengerAtLocation woman t)
))
(:metric minimize(totalDistance))
)