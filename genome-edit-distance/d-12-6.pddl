;; original sequence 1: (1 8 2 3 4 5 29 30 31 32 33 34 35 36 -56 -55 -54 -53 -52 -51 -50 -28 -27 -26 9 -49 -48 -47 -46 -45 41 42 43 44 37 38 39 40 16 17 18 19 20 21 22 23 24 25 10 11 12 13 14 15 57 58 59 6 7 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -56 -55 -54 -53 -60 -59 -58 -57 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 -35 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 90 91 92 93 94 95 96 -105 -104 -103 -102 -101 -100 -99 -98 28 29 30 31 32 33 34 -40 -39 -38 -37 49 50 51 52 -97)
;; simplified sequence 1: (1 8 115 112 121 114 118 -28 120 9 -49 109 116 108 111 117 119 60 106 110 113 107 -97)
;; simplified sequence 2: (1 115 119 8 9 111 -106 114 -60 -117 120 -109 -121 -108 -113 110 107 28 112 -116 49 -118 -97)
;; common subsequences: (((61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76) . 106) ((90 91 92 93 94 95 96 -105 -104 -103 -102 -101 -100 -99 -98) . 107) ((16 17 18 19 20 21 22 23 24 25) . 108) ((-48 -47 -46 -45 41 42 43 44) . 109) ((77 78 79 80 81 82 83) . 110) ((10 11 12 13 14 15) . 111) ((29 30 31 32 33 34) . 112) ((84 85 86 87 88 89) . 113) ((-56 -55 -54 -53) . 114) ((2 3 4 5) . 115) ((37 38 39 40) . 116) ((57 58 59) . 117) ((-52 -51 -50) . 118) ((6 7) . 119) ((-27 -26) . 120) ((35 36) . 121))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((normal g1) (normal g8) (normal sub10) (normal sub7) (normal sub16) (normal sub9) (normal sub13) (inverted g28) (normal sub15) (normal g9) (inverted g49) (normal sub4) (normal sub11) (normal sub3) (normal sub6) (normal sub12) (normal sub14) (normal g60) (normal sub1) (normal sub5) (normal sub8) (normal sub2) (inverted g97))
;; sequence 2 (names): ((normal g1) (normal sub10) (normal sub14) (normal g8) (normal g9) (normal sub6) (inverted sub1) (normal sub9) (inverted g60) (inverted sub12) (normal sub15) (inverted sub4) (inverted sub16) (inverted sub3) (inverted sub8) (normal sub5) (normal sub2) (normal g28) (normal sub7) (inverted sub11) (normal g49) (inverted sub13) (inverted g97))

(define (problem platycodon-to-asyneuma) (:domain genome-edit-distance)
        (:objects sub16 sub15 sub14 sub13 sub12 sub11 sub10 sub9 sub8
            sub7 sub6 sub5 sub4 sub3 sub2 sub1 g97 g60 g49 g28 g9 g8
            g1)
        (:init (normal g1) (normal g8) (normal sub10) (normal sub7)
               (normal sub16) (normal sub9) (normal sub13)
               (inverted g28) (normal sub15) (normal g9) (inverted g49)
               (normal sub4) (normal sub11) (normal sub3) (normal sub6)
               (normal sub12) (normal sub14) (normal g60) (normal sub1)
               (normal sub5) (normal sub8) (normal sub2) (inverted g97)
               (present g1) (present g8) (present sub10) (present sub7)
               (present sub16) (present sub9) (present sub13)
               (present g28) (present sub15) (present g9) (present g49)
               (present sub4) (present sub11) (present sub3)
               (present sub6) (present sub12) (present sub14)
               (present g60) (present sub1) (present sub5)
               (present sub8) (present sub2) (present g97) (cw g97 g1)
               (cw sub2 g97) (cw sub8 sub2) (cw sub5 sub8)
               (cw sub1 sub5) (cw g60 sub1) (cw sub14 g60)
               (cw sub12 sub14) (cw sub6 sub12) (cw sub3 sub6)
               (cw sub11 sub3) (cw sub4 sub11) (cw g49 sub4)
               (cw g9 g49) (cw sub15 g9) (cw g28 sub15) (cw sub13 g28)
               (cw sub9 sub13) (cw sub16 sub9) (cw sub7 sub16)
               (cw sub10 sub7) (cw g8 sub10) (cw g1 g8) (idle)
               (= (total-cost) 0))
        (:goal (and (normal g1) (normal sub10) (normal sub14)
                    (normal g8) (normal g9) (normal sub6)
                    (inverted sub1) (normal sub9) (inverted g60)
                    (inverted sub12) (normal sub15) (inverted sub4)
                    (inverted sub16) (inverted sub3) (inverted sub8)
                    (normal sub5) (normal sub2) (normal g28)
                    (normal sub7) (inverted sub11) (normal g49)
                    (inverted sub13) (inverted g97) (cw g97 g1)
                    (cw sub13 g97) (cw g49 sub13) (cw sub11 g49)
                    (cw sub7 sub11) (cw g28 sub7) (cw sub2 g28)
                    (cw sub5 sub2) (cw sub8 sub5) (cw sub3 sub8)
                    (cw sub16 sub3) (cw sub4 sub16) (cw sub15 sub4)
                    (cw sub12 sub15) (cw g60 sub12) (cw sub9 g60)
                    (cw sub1 sub9) (cw sub6 sub1) (cw g9 sub6)
                    (cw g8 g9) (cw sub14 g8) (cw sub10 sub14)
                    (cw g1 sub10)))
        (:metric minimize (total-cost)))