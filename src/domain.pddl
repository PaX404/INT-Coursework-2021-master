(define (domain driver_and_passengers)
    (:requirements :typing :action-costs)
    (:types
        location
        passenger
        vehicle
    )
    (:predicates
        (onRoad ?v - vehicle ?from ?to - location)
        (vehicleAtLocation ?v - vehicle ?l - location)
        (passengerAtLocation ?p - passenger ?l - location)
        (passengerInCar ?p - passenger ?v - vehicle )
    )
    (:functions 
        (distance ?from ?to - location)
        (totalDistance)
    )
    
    (:action drive
        :parameters (?v - vehicle ?from ?to - location)
        :precondition (and
            (vehicleAtLocation ?v ?from)
            (onRoad ?v ?from ?to)
        )
        :effect (and
            (not (vehicleAtLocation ?v ?from))
            (vehicleAtLocation ?v ?to)
            (increase(totalDistance) (distance ?from ?to))
        )
    )
    
    (:action pickup
        :parameters (?v - vehicle ?l - location ?p - passenger)
        :precondition (and
            (vehicleAtLocation ?v ?l)
            (passengerAtLocation ?p ?l)
        )
        :effect (and
            (not (passengerAtLocation ?p ?l))
            (passengerInCar ?p ?v)
            (increase (totalDistance) 0)
        )
    )
    
    (:action drop
        :parameters (?v - vehicle ?l - location ?p - passenger)
        :precondition (and
            (vehicleAtLocation ?v ?l)
            (passengerInCar ?p ?v)
        )
        :effect (and
            (not(passengerInCar ?p ?v))
            (passengerAtLocation ?p ?l)
            (increase(totalDistance) 0)
        )
    
    )
    
    
    
    
    
    
    
    
    
)