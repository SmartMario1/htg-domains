;; original sequence 1: (1 8 2 3 4 5 29 30 31 32 33 34 35 36 -56 -55 -54 -53 -52 -51 -50 -28 -27 -26 9 -49 -48 -47 -46 -45 41 42 43 44 37 38 39 40 16 17 18 19 20 21 22 23 24 25 10 11 12 13 14 15 57 58 59 6 7 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 -39 -38 -37 28 29 30 31 32 33 34 35 40 26 27 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; simplified sequence 1: (1 8 116 111 36 -56 120 115 -28 121 9 -49 109 118 40 107 114 117 119 106 110 112 113 108)
;; simplified sequence 2: (1 116 119 8 9 114 -106 -117 -56 115 -49 -118 28 111 40 -121 -109 -36 -107 -112 110 113 120 108)
;; common subsequences: (((60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76) . 106) ((16 17 18 19 20 21 22 23 24 25) . 107) ((-105 -104 -103 -102 -101 -100 -99 -98 -97) . 108) ((-48 -47 -46 -45 41 42 43 44) . 109) ((77 78 79 80 81 82 83) . 110) ((29 30 31 32 33 34 35) . 111) ((84 85 86 87 88 89 90) . 112) ((91 92 93 94 95 96) . 113) ((10 11 12 13 14 15) . 114) ((-53 -52 -51 -50) . 115) ((2 3 4 5) . 116) ((57 58 59) . 117) ((37 38 39) . 118) ((6 7) . 119) ((-55 -54) . 120) ((-27 -26) . 121))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((normal g1) (normal g8) (normal sub11) (normal sub6) (normal g36) (inverted g56) (normal sub15) (normal sub10) (inverted g28) (normal sub16) (normal g9) (inverted g49) (normal sub4) (normal sub13) (normal g40) (normal sub2) (normal sub9) (normal sub12) (normal sub14) (normal sub1) (normal sub5) (normal sub7) (normal sub8) (normal sub3))
;; sequence 2 (names): ((normal g1) (normal sub11) (normal sub14) (normal g8) (normal g9) (normal sub9) (inverted sub1) (inverted sub12) (inverted g56) (normal sub10) (inverted g49) (inverted sub13) (normal g28) (normal sub6) (normal g40) (inverted sub16) (inverted sub4) (inverted g36) (inverted sub2) (inverted sub7) (normal sub5) (normal sub8) (normal sub15) (normal sub3))

(define (problem platycodon-to-adenophora)
        (:domain genome-edit-distance)
        (:objects sub16 sub15 sub14 sub13 sub12 sub11 sub10 sub9 sub8
            sub7 sub6 sub5 sub4 sub3 sub2 sub1 g56 g49 g40 g36 g28 g9
            g8 g1)
        (:init (normal g1) (normal g8) (normal sub11) (normal sub6)
               (normal g36) (inverted g56) (normal sub15)
               (normal sub10) (inverted g28) (normal sub16) (normal g9)
               (inverted g49) (normal sub4) (normal sub13) (normal g40)
               (normal sub2) (normal sub9) (normal sub12)
               (normal sub14) (normal sub1) (normal sub5) (normal sub7)
               (normal sub8) (normal sub3) (present g1) (present g8)
               (present sub11) (present sub6) (present g36)
               (present g56) (present sub15) (present sub10)
               (present g28) (present sub16) (present g9) (present g49)
               (present sub4) (present sub13) (present g40)
               (present sub2) (present sub9) (present sub12)
               (present sub14) (present sub1) (present sub5)
               (present sub7) (present sub8) (present sub3)
               (cw sub3 g1) (cw sub8 sub3) (cw sub7 sub8)
               (cw sub5 sub7) (cw sub1 sub5) (cw sub14 sub1)
               (cw sub12 sub14) (cw sub9 sub12) (cw sub2 sub9)
               (cw g40 sub2) (cw sub13 g40) (cw sub4 sub13)
               (cw g49 sub4) (cw g9 g49) (cw sub16 g9) (cw g28 sub16)
               (cw sub10 g28) (cw sub15 sub10) (cw g56 sub15)
               (cw g36 g56) (cw sub6 g36) (cw sub11 sub6) (cw g8 sub11)
               (cw g1 g8) (idle) (= (total-cost) 0))
        (:goal (and (normal g1) (normal sub11) (normal sub14)
                    (normal g8) (normal g9) (normal sub9)
                    (inverted sub1) (inverted sub12) (inverted g56)
                    (normal sub10) (inverted g49) (inverted sub13)
                    (normal g28) (normal sub6) (normal g40)
                    (inverted sub16) (inverted sub4) (inverted g36)
                    (inverted sub2) (inverted sub7) (normal sub5)
                    (normal sub8) (normal sub15) (normal sub3)
                    (cw sub3 g1) (cw sub15 sub3) (cw sub8 sub15)
                    (cw sub5 sub8) (cw sub7 sub5) (cw sub2 sub7)
                    (cw g36 sub2) (cw sub4 g36) (cw sub16 sub4)
                    (cw g40 sub16) (cw sub6 g40) (cw g28 sub6)
                    (cw sub13 g28) (cw g49 sub13) (cw sub10 g49)
                    (cw g56 sub10) (cw sub12 g56) (cw sub1 sub12)
                    (cw sub9 sub1) (cw g9 sub9) (cw g8 g9)
                    (cw sub14 g8) (cw sub11 sub14) (cw g1 sub11)))
        (:metric minimize (total-cost)))