(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec c10_COEFFICIENT_1129 = 0
     let rec c9_COEFFICIENT_1128 = 0
     let rec c8_COEFFICIENT_1127 = 0
     let rec c7_COEFFICIENT_1125 = 0
     let rec c6_COEFFICIENT_1124 = 0
     let rec c5_COEFFICIENT_1123 = 0
     let rec c4_COEFFICIENT_1122 = 0
     let rec c3_COEFFICIENT_1121 = 0
     let rec c2_COEFFICIENT_1120 = 0
     let rec c1_COEFFICIENT_1117 = 0
     let rec c0_COEFFICIENT_1116 = 0
  
     let compose_1030 x_DO_NOT_CARE_1433 x_DO_NOT_CARE_1434 f_EXPARAM_1133 x_DO_NOT_CARE_1431 x_DO_NOT_CARE_1432 f_1031 x_DO_NOT_CARE_1429 x_DO_NOT_CARE_1430 g_EXPARAM_1134 x_DO_NOT_CARE_1427 x_DO_NOT_CARE_1428 g_1032 set_flag_id_1234 s_id_x_1231 x_1033 =
       f_1031 set_flag_id_1234 s_id_x_1231
         (g_1032 set_flag_id_1234 s_id_x_1231 x_1033)
  
     let id_without_checking_1260 set_flag_id_1234 s_id_x_1231 x_1035 =
       let set_flag_id_1234 = true
       in
       let s_id_x_1231 = x_1035
       in
         x_1035
  
     let rec id_1034 prev_set_flag_id_1233 s_prev_id_x_1232 x_1035 =
       let u = if prev_set_flag_id_1233 then
                let u_6367 = fail ()
                in
                  bot()
               else () in
              id_without_checking_1260 prev_set_flag_id_1233 s_prev_id_x_1232
                x_1035
  
     let succ_1036 set_flag_id_1234 s_id_x_1231 x_1037 = x_1037 + 1
  
     let rec toChurch_1038 x_DO_NOT_CARE_1425 x_DO_NOT_CARE_1426 n_1039 x_DO_NOT_CARE_1423 x_DO_NOT_CARE_1424 f_EXPARAM_1119 set_flag_id_1234 s_id_x_1231 f_1040 =
       if n_1039 = 0 then
         id_1034
       else
         compose_1030 set_flag_id_1234 s_id_x_1231
           ((c2_COEFFICIENT_1120 * f_EXPARAM_1119) +
            ((c3_COEFFICIENT_1121 * n_1039) + c4_COEFFICIENT_1122))
           set_flag_id_1234 s_id_x_1231 f_1040 set_flag_id_1234 s_id_x_1231
           ((c8_COEFFICIENT_1127 * f_EXPARAM_1119) +
            ((c9_COEFFICIENT_1128 * n_1039) + c10_COEFFICIENT_1129))
           set_flag_id_1234 s_id_x_1231
           (toChurch_1038 set_flag_id_1234 s_id_x_1231 (n_1039 - 1)
             set_flag_id_1234 s_id_x_1231
             ((c5_COEFFICIENT_1123 * f_EXPARAM_1119) +
              ((c6_COEFFICIENT_1124 * n_1039) + c7_COEFFICIENT_1125))
             set_flag_id_1234 s_id_x_1231 f_1040)
  
     let main_1041 x_1043 =
       let set_flag_id_1234 = false in
       let s_id_x_1231 = 0 in
         if x_1043 >= 0 then
           let tos_1044 =
             toChurch_1038 set_flag_id_1234 s_id_x_1231 x_1043 set_flag_id_1234
               s_id_x_1231 ((c0_COEFFICIENT_1116 * x_1043) + c1_COEFFICIENT_1117)
               set_flag_id_1234 s_id_x_1231 succ_1036
           in
             ()
         else
           ()
")

(set-logic HORN)

(declare-fun |toChurch_1038$unknown:52|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:56|
  ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |id_1034$unknown:30|
  ( Int Int Int Int ) Bool
)

(declare-fun |toChurch_1038$unknown:55|
  ( Int Int Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:26|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:2|
  ( Int Int ) Bool
)

(assert
  (forall ( (|$alpha-1:$$tmp::1| Int) (|$knormal:2| Int) )
    (=>
      ( and (|bot$unknown:2| |$knormal:2| 1) )
      (|bot$unknown:2| |$knormal:2| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$cond-alpha-rename:769| Int) (|$cond-alpha-rename:770| Int) (|$cond-alpha-rename:772| Int) (|$cond-alpha-rename:773| Int) (|$cond-alpha-rename:774| Int) (|$cond-alpha-rename:775| Int) (|$cond-alpha-rename:776| Int) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (not (= 0 |$alpha-23:prev_set_flag_id_1233|)) (|toChurch_1038$unknown:55| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233| |$cond-alpha-rename:776| |$cond-alpha-rename:775| |$cond-alpha-rename:774| |$cond-alpha-rename:773| |$cond-alpha-rename:772| 0 |$cond-alpha-rename:770| |$cond-alpha-rename:769|) (|fail$unknown:26| |$knormal:22| 1) (|bot$unknown:2| |$knormal:20| 1) )
      (|id_1034$unknown:30| |$alpha-25:x_1035| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$V-reftype:36| Int) (|$alpha-33:n_1039| Int) (|$cond-alpha-rename:372| Int) (|$cond-alpha-rename:373| Int) (|$cond-alpha-rename:374| Int) (|$cond-alpha-rename:375| Int) (|$cond-alpha-rename:376| Int) (|$cond-alpha-rename:377| Int) (|$cond-alpha-rename:378| Int) (|$cond-alpha-rename:379| Int) (|$knormal:51| Int) )
    (=>
      ( and (= 0 (+ (* 0 |$cond-alpha-rename:377|) (+ (* 0 |$cond-alpha-rename:374|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:377|) (+ (* 0 |$cond-alpha-rename:374|) 0))) (not (= |$alpha-33:n_1039| 0)) (not (= |$cond-alpha-rename:374| 0)) (|toChurch_1038$unknown:55| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:379| |$cond-alpha-rename:378| |$cond-alpha-rename:377| |$cond-alpha-rename:376| |$cond-alpha-rename:375| |$cond-alpha-rename:374| |$cond-alpha-rename:373| |$cond-alpha-rename:372|) )
      (|toChurch_1038$unknown:55| |$V-reftype:36| |$V-reftype:101| |$knormal:51| |$cond-alpha-rename:379| |$cond-alpha-rename:378| 0 |$cond-alpha-rename:379| |$cond-alpha-rename:378| (- |$alpha-33:n_1039| 1) |$cond-alpha-rename:379| |$cond-alpha-rename:378|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$cond-alpha-rename:588| Int) (|$cond-alpha-rename:589| Int) (|$cond-alpha-rename:590| Int) (|$cond-alpha-rename:591| Int) (|$cond-alpha-rename:592| Int) (|$cond-alpha-rename:593| Int) (|$cond-alpha-rename:618| Int) (|$cond-alpha-rename:619| Int) (|$cond-alpha-rename:643| Int) (|$cond-alpha-rename:644| Int) (|$cond-alpha-rename:645| Int) (|$cond-alpha-rename:646| Int) (|$cond-alpha-rename:647| Int) (|$cond-alpha-rename:648| Int) (|$cond-alpha-rename:672| Int) (|$cond-alpha-rename:673| Int) (|$cond-alpha-rename:674| Int) (|$cond-alpha-rename:675| Int) (|$cond-alpha-rename:676| Int) (|$cond-alpha-rename:677| Int) (|$cond-alpha-rename:678| Int) (|$cond-alpha-rename:679| Int) (|$cond-alpha-rename:701| Int) (|$cond-alpha-rename:702| Int) )
    (=>
      ( and (|toChurch_1038$unknown:52| |$cond-alpha-rename:701| |$cond-alpha-rename:702| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:679| |$cond-alpha-rename:678| |$cond-alpha-rename:593| |$cond-alpha-rename:592| |$cond-alpha-rename:591| |$cond-alpha-rename:590| |$cond-alpha-rename:589| |$cond-alpha-rename:588|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:679| |$cond-alpha-rename:678| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:679| |$cond-alpha-rename:678| |$cond-alpha-rename:648| |$cond-alpha-rename:647| |$cond-alpha-rename:646| |$cond-alpha-rename:645| |$cond-alpha-rename:644| |$cond-alpha-rename:643|) (|toChurch_1038$unknown:55| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:679| |$cond-alpha-rename:678| |$cond-alpha-rename:677| |$cond-alpha-rename:676| |$cond-alpha-rename:675| |$cond-alpha-rename:674| |$cond-alpha-rename:673| |$cond-alpha-rename:672|) (|toChurch_1038$unknown:56| |$cond-alpha-rename:702| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:679| |$cond-alpha-rename:678| (+ (* 0 |$cond-alpha-rename:619|) (+ (* 0 |$cond-alpha-rename:618|) 0)) |$cond-alpha-rename:679| |$cond-alpha-rename:678| (- |$cond-alpha-rename:618| 1) |$cond-alpha-rename:679| |$cond-alpha-rename:678|) (not (= |$cond-alpha-rename:590| 0)) (not (= |$cond-alpha-rename:618| 0)) (not (= |$cond-alpha-rename:645| 0)) (not (= |$cond-alpha-rename:674| 0)) (not (= |$alpha-33:n_1039| 0)) (= 0 (+ (* 0 |$cond-alpha-rename:593|) (+ (* 0 |$cond-alpha-rename:590|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:619|) (+ (* 0 |$cond-alpha-rename:618|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:619|) (+ (* 0 |$cond-alpha-rename:618|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:648|) (+ (* 0 |$cond-alpha-rename:645|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:648|) (+ (* 0 |$cond-alpha-rename:645|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:677|) (+ (* 0 |$cond-alpha-rename:674|) 0))) (= 0 (+ (* 0 |$cond-alpha-rename:677|) (+ (* 0 |$cond-alpha-rename:674|) 0))) )
      (|toChurch_1038$unknown:56| |$cond-alpha-rename:701| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$cond-alpha-rename:679| |$cond-alpha-rename:678| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (not (exists ( (|$cond-alpha-rename:735| Int) (|$cond-alpha-rename:736| Int) (|$cond-alpha-rename:737| Int) (|$cond-alpha-rename:778| Int) (|$cond-alpha-rename:779| Int) (|$cond-alpha-rename:781| Int) (|$cond-alpha-rename:782| Int) (|$cond-alpha-rename:783| Int) (|$cond-alpha-rename:784| Int) (|$cond-alpha-rename:785| Int) )
    ( and (|toChurch_1038$unknown:55| |$cond-alpha-rename:737| |$cond-alpha-rename:736| |$cond-alpha-rename:735| |$cond-alpha-rename:785| |$cond-alpha-rename:784| |$cond-alpha-rename:783| |$cond-alpha-rename:782| |$cond-alpha-rename:781| 0 |$cond-alpha-rename:779| |$cond-alpha-rename:778|) (not (= 0 |$cond-alpha-rename:735|)) )
    )
  )
)
(assert
  (forall ( (|$alpha-23:prev_set_flag_id_1233| Int) (|$alpha-24:s_prev_id_x_1232| Int) (|$alpha-25:x_1035| Int) (|$cond-alpha-rename:787| Int) (|$cond-alpha-rename:788| Int) (|$cond-alpha-rename:790| Int) (|$cond-alpha-rename:791| Int) (|$cond-alpha-rename:792| Int) (|$cond-alpha-rename:793| Int) (|$cond-alpha-rename:794| Int) )
    (=>
      ( and (not (not (= 0 |$alpha-23:prev_set_flag_id_1233|))) (|toChurch_1038$unknown:55| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233| |$cond-alpha-rename:794| |$cond-alpha-rename:793| |$cond-alpha-rename:792| |$cond-alpha-rename:791| |$cond-alpha-rename:790| 0 |$cond-alpha-rename:788| |$cond-alpha-rename:787|) )
      (|id_1034$unknown:30| |$alpha-25:x_1035| |$alpha-25:x_1035| |$alpha-24:s_prev_id_x_1232| |$alpha-23:prev_set_flag_id_1233|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:51| Int) (|$V-reftype:53| Int) (|$V-reftype:55| Int) (|$V-reftype:56| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) )
    (=>
      ( and (|id_1034$unknown:30| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51|) (|toChurch_1038$unknown:55| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| 0 |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) )
      (|toChurch_1038$unknown:56| |$V-reftype:56| |$V-reftype:55| |$V-reftype:53| |$V-reftype:51| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| 0 |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:70| Int) (|$V-reftype:72| Int) (|$alpha-49:x_1043| Int) (|succ_1036| Int) )
    (=>
      ( and (>= |$alpha-49:x_1043| 0) )
      (|toChurch_1038$unknown:52| (+ |$V-reftype:72| 1) |$V-reftype:72| |$V-reftype:70| |succ_1036| 0 0 0 0 0 |$alpha-49:x_1043| 0 0)
    )
  )
)
(assert
  (forall ( (|$V-reftype:93| Int) (|$V-reftype:95| Int) (|$V-reftype:96| Int) (|$alpha-31:x_DO_NOT_CARE_1425| Int) (|$alpha-32:x_DO_NOT_CARE_1426| Int) (|$alpha-33:n_1039| Int) (|$alpha-34:x_DO_NOT_CARE_1423| Int) (|$alpha-35:x_DO_NOT_CARE_1424| Int) (|$alpha-36:f_EXPARAM_1119| Int) (|$alpha-37:set_flag_id_1234| Int) (|$alpha-38:s_id_x_1231| Int) (|$alpha-39:f_1040| Int) )
    (=>
      ( and (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| |$alpha-36:f_EXPARAM_1119| |$alpha-35:x_DO_NOT_CARE_1424| |$alpha-34:x_DO_NOT_CARE_1423| |$alpha-33:n_1039| |$alpha-32:x_DO_NOT_CARE_1426| |$alpha-31:x_DO_NOT_CARE_1425|) (not (= |$alpha-33:n_1039| 0)) )
      (|toChurch_1038$unknown:52| |$V-reftype:96| |$V-reftype:95| |$V-reftype:93| |$alpha-39:f_1040| |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| (+ (* 0 |$alpha-36:f_EXPARAM_1119|) (+ (* 0 |$alpha-33:n_1039|) 0)) |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234| (- |$alpha-33:n_1039| 1) |$alpha-38:s_id_x_1231| |$alpha-37:set_flag_id_1234|)
    )
  )
)
(check-sat)

(get-model)

