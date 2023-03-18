(define (problem eight-puzzle-from-figure)
  (:domain switch-light)
  (:objects
     light1 light2 light3 
     light4 light5 light6 
     light7 light8 light9

     row0 row1 row2 row3 row4 row5 row6
     col0 col1 col2 col3 col4 col5 col6)
  (:init
     (next-row row0 row1)          (next-col col0 col1)
     (next-row row1 row2)          (next-col col1 col2)
     (next-row row2 row3)          (next-col col2 col3)
     (next-row row3 row4)          (next-col col3 col4)
     (next-row row4 row5)          (next-col col4 col5)
     (next-row row5 row6)          (next-col col5 col6)

     (light-on-at row1 col1)     
     (light-on-at row1 col2)
     (light-on-at row1 col3) 
     (light-on-at row1 col4)
     (light-on-at row1 col5)      

     (light-on-at row2 col1)     
     (light-on-at row2 col2)
     (light-on-at row2 col3) 
     (light-on-at row2 col4)
     (light-on-at row2 col5)      

     (light-on-at row3 col1)     
     (light-on-at row3 col2)
     (light-on-at row3 col3) 
     (light-on-at row3 col4)
     (light-on-at row3 col5)
     
     (light-on-at row4 col1)     
     (light-on-at row4 col2)
     (light-on-at row4 col3) 
     (light-on-at row4 col4)
     (light-on-at row4 col5)    

     (light-on-at row5 col1)     
     (light-on-at row5 col2)
     (light-on-at row5 col3) 
     (light-on-at row5 col4)
     (light-on-at row5 col5)    

     (is-blank_col col0)
     (is-blank_col col6)

     (is-blank_row row0)
     (is-blank_row row6)
   )
  (:goal
   (and
    (is-blank_col col0)
    (is-blank_col col6)
    (is-blank_row row0)
    (is-blank_row row6)

     (light-off-at row1 col1)     
     (light-off-at row1 col2)
     (light-off-at row1 col3) 
     (light-off-at row1 col4)
     (light-off-at row1 col5)      

     (light-off-at row2 col1)     
     (light-off-at row2 col2)
     (light-off-at row2 col3) 
     (light-off-at row2 col4)
     (light-off-at row2 col5)      

     (light-off-at row3 col1)     
     (light-off-at row3 col2)
     (light-off-at row3 col3) 
     (light-off-at row3 col4)
     (light-off-at row3 col5)
     
     (light-off-at row4 col1)     
     (light-off-at row4 col2)
     (light-off-at row4 col3) 
     (light-off-at row4 col4)
     (light-off-at row4 col5)    

     (light-off-at row5 col1)     
     (light-off-at row5 col2)
     (light-off-at row5 col3) 
     (light-off-at row5 col4)
     (light-off-at row5 col5)   
    )
   )

   )