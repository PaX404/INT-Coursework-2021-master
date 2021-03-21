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
    
    (passengerAtLocation man u)
    (passengerAtLocation woman r)
    
    
)

(:goal (and
    (passengerAtLocation man r)
    (passengerAtLocation woman t)
))
(:metric minimize(totalDistance))
)