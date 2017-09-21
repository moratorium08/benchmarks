(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec bin_1030 bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
       let u = if prev_set_flag_bin_1076 then
                if ((0 * 1) + (0 * s_prev_bin_n_1074)) + (1 * s_prev_bin_k_1075)
                   > ((0 * 1) + (0 * n_1031)) + (1 * k_1032) &&
                   ((0 * 1) + (0 * n_1031)) + (1 * k_1032) >= 0 ||
                   ((0 * 1) + (0 * s_prev_bin_n_1074)) + (1 * s_prev_bin_k_1075)
                   >= ((0 * 1) + (0 * n_1031)) + (1 * k_1032) &&
                   (((0 * 1) + (1 * s_prev_bin_n_1074)) + (-s_prev_bin_k_1075) >
                    ((0 * 1) + (1 * n_1031)) + (-k_1032) &&
                    ((0 * 1) + (1 * n_1031)) + (-k_1032) >= 0) then
                  ()
                else
                  let u_7213 = fail ()
                  in
                    bot()
               else () in
              bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092
                x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076
                s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032
  
     let rec bin_without_checking_1089 x_DO_NOT_CARE_1095 x_DO_NOT_CARE_1096 x_DO_NOT_CARE_1097 n_1031 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1032 =
       let set_flag_bin_1077 = true
       in
       let s_bin_k_1073 = k_1032
       in
       let s_bin_n_1072 = n_1031
       in
         if n_1031 = 0 then
           1
         else
           if k_1032 <= 0 || k_1032 >= n_1031 then
             1
           else
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (k_1032 - 1)
             +
             bin_1030 bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (n_1031 - 1)
               set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1032
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034  n_1035 k_1036 =
         if n_1035 >= 0 && k_1036 >= 0 then
           bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073
             n_1035 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1036
         else
           0
  
  let mian =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1033$unknown:38|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:37|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$knormal:91| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) )
      (|bin_without_checking_1089$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:20| Int) (|$cond-alpha-rename:21| Int) (|$cond-alpha-rename:215| Int) (|$cond-alpha-rename:216| Int) (|$cond-alpha-rename:217| Int) (|$cond-alpha-rename:218| Int) (|$cond-alpha-rename:219| Int) (|$cond-alpha-rename:22| Int) (|$cond-alpha-rename:220| Int) (|$cond-alpha-rename:221| Int) (|$cond-alpha-rename:222| Int) (|$cond-alpha-rename:23| Int) (|$cond-alpha-rename:231| Int) (|$cond-alpha-rename:24| Int) (|$cond-alpha-rename:25| Int) (|$cond-alpha-rename:26| Int) (|$cond-alpha-rename:27| Int) (|$cond-alpha-rename:35| Int) (|$knormal:17| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$cond-alpha-rename:27| |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:222| |$cond-alpha-rename:221| |$cond-alpha-rename:220| |$cond-alpha-rename:219| |$cond-alpha-rename:218| |$cond-alpha-rename:217| |$cond-alpha-rename:216| |$cond-alpha-rename:215|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:27| |$cond-alpha-rename:26| |$cond-alpha-rename:25| |$cond-alpha-rename:24| |$cond-alpha-rename:23| |$cond-alpha-rename:22| |$cond-alpha-rename:21| |$cond-alpha-rename:20|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:231| (- |$cond-alpha-rename:222| 1) |$cond-alpha-rename:222| |$cond-alpha-rename:218| 1 (- |$cond-alpha-rename:218| 1) |$cond-alpha-rename:222| |$cond-alpha-rename:218| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:35| (- |$cond-alpha-rename:27| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bin_without_checking_1089$unknown:27| |$knormal:17| |$cond-alpha-rename:27| |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1) (|bot$unknown:29| |$knormal:68| 1) (|fail$unknown:31| |$knormal:70| 1) (not (= |$cond-alpha-rename:218| 0)) (not (or (<= |$cond-alpha-rename:222| 0) (>= |$cond-alpha-rename:222| |$cond-alpha-rename:218|))) (not (= |$cond-alpha-rename:23| 0)) (not (or (<= |$cond-alpha-rename:27| 0) (>= |$cond-alpha-rename:27| |$cond-alpha-rename:23|))) (not (or (and (>= |$cond-alpha-rename:27| |$cond-alpha-rename:27|) (and (>= (+ (- |$cond-alpha-rename:23| 1) (- |$cond-alpha-rename:27|)) 0) (> (+ |$cond-alpha-rename:23| (- |$cond-alpha-rename:27|)) (+ (- |$cond-alpha-rename:23| 1) (- |$cond-alpha-rename:27|))))) (and (>= |$cond-alpha-rename:27| 0) (> |$cond-alpha-rename:27| |$cond-alpha-rename:27|)))) )
      (|bin_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:27| |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1 (- |$cond-alpha-rename:23| 1) |$cond-alpha-rename:27| |$cond-alpha-rename:23| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:232| Int) (|$cond-alpha-rename:233| Int) (|$cond-alpha-rename:234| Int) (|$cond-alpha-rename:235| Int) (|$cond-alpha-rename:236| Int) (|$cond-alpha-rename:237| Int) (|$cond-alpha-rename:238| Int) (|$cond-alpha-rename:239| Int) (|$cond-alpha-rename:248| Int) (|$cond-alpha-rename:36| Int) (|$cond-alpha-rename:37| Int) (|$cond-alpha-rename:38| Int) (|$cond-alpha-rename:39| Int) (|$cond-alpha-rename:40| Int) (|$cond-alpha-rename:41| Int) (|$cond-alpha-rename:42| Int) (|$cond-alpha-rename:43| Int) (|$cond-alpha-rename:51| Int) (|$knormal:17| Int) )
    (=>
      ( and (|bin_1030$unknown:8| |$cond-alpha-rename:43| |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:239| |$cond-alpha-rename:238| |$cond-alpha-rename:237| |$cond-alpha-rename:236| |$cond-alpha-rename:235| |$cond-alpha-rename:234| |$cond-alpha-rename:233| |$cond-alpha-rename:232|) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:43| |$cond-alpha-rename:42| |$cond-alpha-rename:41| |$cond-alpha-rename:40| |$cond-alpha-rename:39| |$cond-alpha-rename:38| |$cond-alpha-rename:37| |$cond-alpha-rename:36|) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:248| (- |$cond-alpha-rename:239| 1) |$cond-alpha-rename:239| |$cond-alpha-rename:235| 1 (- |$cond-alpha-rename:235| 1) |$cond-alpha-rename:239| |$cond-alpha-rename:235| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:51| (- |$cond-alpha-rename:43| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1) (|bin_without_checking_1089$unknown:27| |$knormal:17| |$cond-alpha-rename:43| |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1) (not (= |$cond-alpha-rename:235| 0)) (not (or (<= |$cond-alpha-rename:239| 0) (>= |$cond-alpha-rename:239| |$cond-alpha-rename:235|))) (not (= |$cond-alpha-rename:39| 0)) (not (or (<= |$cond-alpha-rename:43| 0) (>= |$cond-alpha-rename:43| |$cond-alpha-rename:39|))) (or (and (>= |$cond-alpha-rename:43| |$cond-alpha-rename:43|) (and (>= (+ (- |$cond-alpha-rename:39| 1) (- |$cond-alpha-rename:43|)) 0) (> (+ |$cond-alpha-rename:39| (- |$cond-alpha-rename:43|)) (+ (- |$cond-alpha-rename:39| 1) (- |$cond-alpha-rename:43|))))) (and (>= |$cond-alpha-rename:43| 0) (> |$cond-alpha-rename:43| |$cond-alpha-rename:43|))) )
      (|bin_1030$unknown:18| |$knormal:17| |$cond-alpha-rename:43| |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1 (- |$cond-alpha-rename:39| 1) |$cond-alpha-rename:43| |$cond-alpha-rename:39| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:68| Int) (|$cond-alpha-rename:69| Int) (|$cond-alpha-rename:70| Int) (|$cond-alpha-rename:71| Int) (|$cond-alpha-rename:72| Int) (|$cond-alpha-rename:73| Int) (|$cond-alpha-rename:74| Int) (|$cond-alpha-rename:75| Int) (|$cond-alpha-rename:83| Int) (|$knormal:68| Int) (|$knormal:70| Int) )
    (=>
      ( and (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:75|) (+ (+ 0 0) |$cond-alpha-rename:75|)) (>= (+ (+ 0 0) |$cond-alpha-rename:75|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:75|) (+ (+ 0 0) |$cond-alpha-rename:75|)) (and (> (+ (+ 0 |$cond-alpha-rename:71|) (- |$cond-alpha-rename:75|)) (+ (+ 0 (- |$cond-alpha-rename:71| 1)) (- |$cond-alpha-rename:75|))) (>= (+ (+ 0 (- |$cond-alpha-rename:71| 1)) (- |$cond-alpha-rename:75|)) 0))))) (not (or (<= |$cond-alpha-rename:75| 0) (>= |$cond-alpha-rename:75| |$cond-alpha-rename:71|))) (not (= |$cond-alpha-rename:71| 0)) (not (= 0 1)) (|fail$unknown:31| |$knormal:70| 1) (|bot$unknown:29| |$knormal:68| 1) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:83| (- |$cond-alpha-rename:75| 1) |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1 (- |$cond-alpha-rename:71| 1) |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:75| |$cond-alpha-rename:74| |$cond-alpha-rename:73| |$cond-alpha-rename:72| |$cond-alpha-rename:71| |$cond-alpha-rename:70| |$cond-alpha-rename:69| |$cond-alpha-rename:68|) )
      (|bin_1030$unknown:8| |$cond-alpha-rename:75| |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1 (- |$cond-alpha-rename:71| 1) |$cond-alpha-rename:75| |$cond-alpha-rename:71| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:84| Int) (|$cond-alpha-rename:85| Int) (|$cond-alpha-rename:86| Int) (|$cond-alpha-rename:87| Int) (|$cond-alpha-rename:88| Int) (|$cond-alpha-rename:89| Int) (|$cond-alpha-rename:90| Int) (|$cond-alpha-rename:91| Int) (|$cond-alpha-rename:99| Int) )
    (=>
      ( and (not (or (<= |$cond-alpha-rename:91| 0) (>= |$cond-alpha-rename:91| |$cond-alpha-rename:87|))) (not (= |$cond-alpha-rename:87| 0)) (or (and (> (+ (+ 0 0) |$cond-alpha-rename:91|) (+ (+ 0 0) |$cond-alpha-rename:91|)) (>= (+ (+ 0 0) |$cond-alpha-rename:91|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:91|) (+ (+ 0 0) |$cond-alpha-rename:91|)) (and (> (+ (+ 0 |$cond-alpha-rename:87|) (- |$cond-alpha-rename:91|)) (+ (+ 0 (- |$cond-alpha-rename:87| 1)) (- |$cond-alpha-rename:91|))) (>= (+ (+ 0 (- |$cond-alpha-rename:87| 1)) (- |$cond-alpha-rename:91|)) 0)))) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:99| (- |$cond-alpha-rename:91| 1) |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1 (- |$cond-alpha-rename:87| 1) |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:91| |$cond-alpha-rename:90| |$cond-alpha-rename:89| |$cond-alpha-rename:88| |$cond-alpha-rename:87| |$cond-alpha-rename:86| |$cond-alpha-rename:85| |$cond-alpha-rename:84|) )
      (|bin_1030$unknown:8| |$cond-alpha-rename:91| |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1 (- |$cond-alpha-rename:87| 1) |$cond-alpha-rename:91| |$cond-alpha-rename:87| 1)
    )
  )
)
(assert
  (forall ( (|$cond-alpha-rename:116| Int) (|$cond-alpha-rename:117| Int) (|$cond-alpha-rename:118| Int) (|$cond-alpha-rename:119| Int) (|$cond-alpha-rename:120| Int) (|$cond-alpha-rename:121| Int) (|$cond-alpha-rename:122| Int) (|$cond-alpha-rename:123| Int) (|$cond-alpha-rename:131| Int) )
    (=>
      ( and (not (or (<= |$cond-alpha-rename:123| 0) (>= |$cond-alpha-rename:123| |$cond-alpha-rename:119|))) (not (= |$cond-alpha-rename:119| 0)) (not (not (= 0 1))) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:131| (- |$cond-alpha-rename:123| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1 (- |$cond-alpha-rename:119| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:123| |$cond-alpha-rename:122| |$cond-alpha-rename:121| |$cond-alpha-rename:120| |$cond-alpha-rename:119| |$cond-alpha-rename:118| |$cond-alpha-rename:117| |$cond-alpha-rename:116|) )
      (|bin_1030$unknown:8| |$cond-alpha-rename:123| |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1 (- |$cond-alpha-rename:119| 1) |$cond-alpha-rename:123| |$cond-alpha-rename:119| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$knormal:110| Int) (|$knormal:91| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (|bin_without_checking_1089$unknown:27| |$knormal:91| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) (|bin_1030$unknown:18| |$knormal:110| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1) )
      (|bin_without_checking_1089$unknown:27| (+ |$knormal:91| |$knormal:110|) |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| 0 |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:27| 1 |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| 0 |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (not (= |$alpha-17:n_1031| 0)) (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:27| 1 |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) )
    (=>
      ( and (not (or (<= |$alpha-21:k_1032| 0) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|))) (not (= |$alpha-17:n_1031| 0)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) )
      (|bin_without_checking_1089$unknown:26| (- |$alpha-21:k_1032| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1 (- |$alpha-17:n_1031| 1) |$alpha-21:k_1032| |$alpha-17:n_1031| 1)
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:129| Int) )
    (=>
      ( and (>= |$alpha-29:n_1035| 0) (>= |$alpha-30:k_1036| 0) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:27| |$knormal:129| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) )
      (|main_1033$unknown:38| |$knormal:129| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:29| |$knormal:2| 1) )
      (|bot$unknown:29| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:334| Int) (|$cond-alpha-rename:335| Int) (|$cond-alpha-rename:336| Int) (|$cond-alpha-rename:337| Int) (|$cond-alpha-rename:338| Int) (|$cond-alpha-rename:339| Int) (|$cond-alpha-rename:340| Int) (|$cond-alpha-rename:341| Int) (|$cond-alpha-rename:349| Int) )
    ( and (not (or (and (> (+ (+ 0 0) |$cond-alpha-rename:341|) (+ (+ 0 0) |$cond-alpha-rename:341|)) (>= (+ (+ 0 0) |$cond-alpha-rename:341|) 0)) (and (>= (+ (+ 0 0) |$cond-alpha-rename:341|) (+ (+ 0 0) |$cond-alpha-rename:341|)) (and (> (+ (+ 0 |$cond-alpha-rename:337|) (- |$cond-alpha-rename:341|)) (+ (+ 0 (- |$cond-alpha-rename:337| 1)) (- |$cond-alpha-rename:341|))) (>= (+ (+ 0 (- |$cond-alpha-rename:337| 1)) (- |$cond-alpha-rename:341|)) 0))))) (not (or (<= |$cond-alpha-rename:341| 0) (>= |$cond-alpha-rename:341| |$cond-alpha-rename:337|))) (not (= |$cond-alpha-rename:337| 0)) (not (= 0 1)) (|bin_without_checking_1089$unknown:27| |$cond-alpha-rename:349| (- |$cond-alpha-rename:341| 1) |$cond-alpha-rename:341| |$cond-alpha-rename:337| 1 (- |$cond-alpha-rename:337| 1) |$cond-alpha-rename:341| |$cond-alpha-rename:337| 1) (|bin_without_checking_1089$unknown:26| |$cond-alpha-rename:341| |$cond-alpha-rename:340| |$cond-alpha-rename:339| |$cond-alpha-rename:338| |$cond-alpha-rename:337| |$cond-alpha-rename:336| |$cond-alpha-rename:335| |$cond-alpha-rename:334|) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) )
    (=>
      ( and (>= |$alpha-29:n_1035| 0) (>= |$alpha-30:k_1036| 0) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) )
      (|bin_without_checking_1089$unknown:26| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) )
    (=>
      ( and (not (and (>= |$alpha-29:n_1035| 0) (>= |$alpha-30:k_1036| 0))) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) )
      (|main_1033$unknown:38| 0 |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(check-sat)

(get-model)

