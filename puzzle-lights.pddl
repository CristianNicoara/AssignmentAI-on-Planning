(define (domain switch-light)
  (:requirements :adl)
  (:predicates
   (light-on-at ?r ?c)
   (light-off-at ?r ?c)
   (next-row ?r1 ?r2)
   (next-col ?c1 ?c2)
   (is-blank_row ?r)
   (is-blank_col ?c)
  )

    (:action turnLightOn_Middle                              ; pentru a aprinde bec apasat
    :parameters (?rcur ?ccur ?rup ?rbelow ?cleft ?cright)
    :precondition (and (light-off-at ?rcur ?ccur)            ; ledul trebuie sa fie stins
                        (next-row ?rup ?rcur)                ; randul curent este urmatorul fata de randul de sus
                        (next-row ?rcur ?rbelow)             ; randul de jos este urmatorul fata de randul curent
                        (next-col ?cleft ?ccur)              ; coloana curenta este urmatoarea fata de cea din stanga 
                        (next-col ?ccur ?cright))            ; coloana din dreapta este urmatoarea fata de cea curenta
    :effect (and (not (light-off-at ?rcur ?ccur))            ; stergem starea de bec stins la pozitia curenta
                (light-on-at ?rcur ?ccur)                    ; aprindem ledul 
                (when (and (light-off-at ?rbelow ?ccur)  )    ; cand este stins ledul de jos
                      (and (not (light-off-at ?rbelow ?ccur))
                           (light-on-at ?rbelow ?ccur))
                )
                (when (and (light-on-at ?rbelow ?ccur) )     ; cand este aprins ledul de jos
                      (and (not (light-on-at ?rbelow ?ccur))
                           (light-off-at ?rbelow ?ccur))
                )

                (when (and (light-off-at ?rup ?ccur) )     ; cand este stins ledul de sus
                      (and (not (light-off-at ?rup ?ccur))
                           (light-on-at ?rup ?ccur))
                )
                (when (and (light-on-at ?rup ?ccur)  )     ; cand este aprins ledul de sus
                      (and (not (light-on-at ?rup ?ccur))
                           (light-off-at ?rup ?ccur))
                )

                (when (and (light-off-at ?rcur ?cright))   ; cand este stins ledul din dreapta
                      (and (not (light-off-at ?rcur ?cright))
                           (light-on-at ?rcur ?cright))
                )
                (when (and (light-on-at ?rcur ?cright) )   ; cand este aprins ledul din dreapta  
                      (and (not (light-on-at ?rcur ?cright))
                           (light-off-at ?rcur ?cright))
                )

                (when (and (light-off-at ?rcur ?cleft) )  ; cand este stins ledul din stanga
                      (and (not (light-off-at ?rcur ?cleft))
                           (light-on-at ?rcur ?cleft))
                )
                (when (and (light-on-at ?rcur ?cleft) )   ; cand este aprins ledul din stanga  
                      (and (not (light-on-at ?rcur ?cleft))
                           (light-off-at ?rcur ?cleft))
                )
      )
  )
  
    (:action turnLightOff_Middle
    :parameters (?rcur ?ccur ?rup ?rbelow ?cleft ?cright)
    :precondition (and (light-on-at ?rcur ?ccur)            ; ledul trebuie sa fie stins
                        (next-row ?rup ?rcur)               ; randul curent este urmatorul fata de randul de sus
                        (next-row ?rcur ?rbelow)            ; randul de jos este urmatorul fata de randul curent
                        (next-col ?cleft ?ccur)             ; coloana curenta este urmatoarea fata de cea din stanga 
                        (next-col ?ccur ?cright))           ; coloana din dreapta este urmatoarea fata de cea curenta
    :effect (and (not (light-on-at ?rcur ?ccur))            ; stergem starea de bec stins la pozitia curenta
                (light-off-at ?rcur ?ccur)                  ; aprindem ledul 
                (when (and (light-off-at ?rbelow ?ccur)  )    ; cand este stins ledul de jos
                      (and (not (light-off-at ?rbelow ?ccur))
                           (light-on-at ?rbelow ?ccur))
                )
                (when (and (light-on-at ?rbelow ?ccur) )     ; cand este aprins ledul de jos
                      (and (not (light-on-at ?rbelow ?ccur))
                           (light-off-at ?rbelow ?ccur))
                )

                (when (and (light-off-at ?rup ?ccur) )     ; cand este stins ledul de sus
                      (and (not (light-off-at ?rup ?ccur))
                           (light-on-at ?rup ?ccur))
                )
                (when (and (light-on-at ?rup ?ccur)  )     ; cand este aprins ledul de sus
                      (and (not (light-on-at ?rup ?ccur))
                           (light-off-at ?rup ?ccur))
                )

                (when (and (light-off-at ?rcur ?cright))   ; cand este stins ledul din dreapta
                      (and (not (light-off-at ?rcur ?cright))
                           (light-on-at ?rcur ?cright))
                )
                (when (and (light-on-at ?rcur ?cright) )   ; cand este aprins ledul din dreapta  
                      (and (not (light-on-at ?rcur ?cright))
                           (light-off-at ?rcur ?cright))
                )

                (when (and (light-off-at ?rcur ?cleft) )  ; cand este stins ledul din stanga
                      (and (not (light-off-at ?rcur ?cleft))
                           (light-on-at ?rcur ?cleft))
                )
                (when (and (light-on-at ?rcur ?cleft) )   ; cand este aprins ledul din stanga  
                      (and (not (light-on-at ?rcur ?cleft))
                           (light-off-at ?rcur ?cleft))
                )
      )
   )
)
