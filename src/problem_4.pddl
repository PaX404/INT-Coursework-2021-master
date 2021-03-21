(define (problem driver_and_passengers)
    (:domain driver_and_passengers)
(:objects 
    car - vehicle
    r s t u v w x y z - location
    man woman - passenger
)

(:init
    (= (totalDistance) 0)
    (vehicleAtLocation car z)
    
    (onRoad car z u)
    (= (distance z u) 800)

    (onRoad car z t)
    (= (distance z t) 600)

    (onRoad car z v)
    (= (distance z v) 220) 

    (onRoad car v z)
    (= (distance v z) 220)

    (onRoad car v s)
    (= (distance v s) 630)

    (onRoad car v w)
    (= (distance v w) 650)

    (onRoad car w v)
    (= (distance w v) 650)

    (onRoad car w t)
    (= (distance w t) 360)

    (onRoad car w x)
    (= (distance w x) 630)

    (onRoad car r u)
    (= (distance r u) 360)

    (onRoad car r s)
    (= (distance r s) 200)

    (onRoad car r t)
    (= (distance r t) 500)

    (onRoad car s r)
    (= (distance s r) 200)

    (onRoad car s v)
    (= (distance s v) 630)

    (onRoad car s t)
    (= (distance s t) 380)

    (onRoad car s y)
    (= (distance s y) 420)

    (onRoad car s x)
    (= (distance s x) 600)

    (onRoad car t z)
    (= (distance t z) 600)

    (onRoad car t w)
    (= (distance t w) 360)

    (onRoad car t r)
    (= (distance t r) 500)

    (onRoad car t s)
    (= (distance t s) 380)

    (onRoad car u z)
    (= (distance u z) 800)

    (onRoad car u r)
    (= (distance u r) 360)

    (onRoad car u y)
    (= (distance u y) 700)

    (onRoad car y u)
    (= (distance y u) 700)

    (onRoad car y s)
    (= (distance y s) 420)

    (onRoad car y x)
    (= (distance y x) 500)

    (onRoad car x y)
    (= (distance y x) 500)

    (onRoad car x s)
    (= (distance x s) 600)

    (onRoad car x w)
    (= (distance x w) 630)
    
    (passengerAtLocation man t)
    (passengerAtLocation woman x)
    
    
)

(:goal (and
    (passengerAtLocation man y)
    (passengerAtLocation woman r)
))
(:metric minimize(totalDistance))
)
