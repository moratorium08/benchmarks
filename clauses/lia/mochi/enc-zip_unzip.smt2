(set-info :origin "Verification conditions for the caml program
  (*
  USED: PLDI2011 as l-zipunzip
  USED: PEPM2013 as l-zipunzip
  *)
  
  let f g x y = g (x+1) (y+1)
  let rec unzip x k =
   if x=0 then k 0 0
   else
     unzip (x-1) (f k)
  
  let rec zip x y =
   if x=0 then
    if y=0 then 0
      else assert false
   else if y=0 then assert false
    else 1 + zip (x-1) (y-1)
  
  let main n =
   let x = unzip n zip in ()
")

(set-logic HORN)

(declare-fun |zip$unknown:14|
  ( Int Int Int ) Bool
)

(declare-fun |zip$unknown:13|
  ( Int Int ) Bool
)

(declare-fun |unzip$unknown:11|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:6|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:5|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:4|
  ( Int ) Bool
)

(declare-fun |unzip$unknown:9|
  ( Int Int Int ) Bool
)

(declare-fun |f$unknown:3|
  ( Int Int Int ) Bool
)

(declare-fun |unzip$unknown:10|
  ( Int Int Int Int ) Bool
)

(declare-fun |f$unknown:2|
  ( Int Int ) Bool
)

(declare-fun |f$unknown:1|
  ( Int ) Bool
)

(declare-fun |zip$unknown:12|
  ( Int ) Bool
)

(declare-fun |unzip$unknown:8|
  ( Int Int ) Bool
)

(declare-fun |unzip$unknown:7|
  ( Int ) Bool
)

(assert
  (forall ( (|$alpha-8:n| Int) )
    (=>
      ( and true )
      (|unzip$unknown:7| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|unzip$unknown:8| |$V-reftype:17| |$alpha-8:n|) )
      (|zip$unknown:12| |$V-reftype:17|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$V-reftype:1| Int) (|$alpha-4:x| Int) )
    (=>
      ( and (|f$unknown:1| |$V-reftype:1|) (|unzip$unknown:7| |$alpha-4:x|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) )
      (|unzip$unknown:8| |$V-reftype:1| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$V-reftype:20| Int) (|$alpha-5:k| Int) (|$alpha-4:x| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-5:k|) (|f$unknown:2| |$V-reftype:20| |$alpha-5:k|) (|unzip$unknown:10| |$V-reftype:21| |$V-reftype:20| |$alpha-5:k| |$alpha-4:x|) (|unzip$unknown:7| |$alpha-4:x|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) )
      (|f$unknown:3| |$V-reftype:21| |$V-reftype:20| |$alpha-5:k|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:x| Int) (|$V-reftype:3| Int) (|$alpha-5:k| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|f$unknown:1| |$alpha-5:k|) (|f$unknown:2| |$V-reftype:3| |$alpha-5:k|) (|unzip$unknown:7| |$alpha-4:x|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) )
      (|unzip$unknown:9| |$V-reftype:3| |$alpha-5:k| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:31| Int) (|$alpha-3:y| Int) (|$knormal:1| Int) (|$knormal:5| Int) (|$knormal:3| Int) (|$alpha-2:x| Int) )
    (=>
      ( and (|f$unknown:3| |$knormal:5| |$knormal:3| |$knormal:1|) (|f$unknown:4| |$alpha-2:x|) (|f$unknown:5| |$alpha-3:y| |$alpha-2:x|) (= |$V-reftype:31| |$knormal:5|) (= |$knormal:1| (+ |$alpha-2:x| 1)) (= |$knormal:3| (+ |$alpha-3:y| 1)) )
      (|f$unknown:6| |$V-reftype:31| |$alpha-3:y| |$alpha-2:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:3| Int) (|$knormal:1| Int) (|$alpha-3:y| Int) (|$alpha-2:x| Int) )
    (=>
      ( and (|f$unknown:4| |$alpha-2:x|) (|f$unknown:5| |$alpha-3:y| |$alpha-2:x|) (= |$knormal:1| (+ |$alpha-2:x| 1)) (= |$knormal:3| (+ |$alpha-3:y| 1)) )
      (|f$unknown:1| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$alpha-2:x| Int) (|$alpha-3:y| Int) (|$knormal:1| Int) (|$knormal:3| Int) )
    (=>
      ( and (|f$unknown:4| |$alpha-2:x|) (|f$unknown:5| |$alpha-3:y| |$alpha-2:x|) (= |$knormal:1| (+ |$alpha-2:x| 1)) (= |$knormal:3| (+ |$alpha-3:y| 1)) )
      (|f$unknown:2| |$knormal:3| |$knormal:1|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:8| Int) (|$alpha-4:x| Int) (|$V-reftype:10| Int) (|$V-reftype:11| Int) (|$knormal:7| Int) )
    (=>
      ( and (|f$unknown:6| |$V-reftype:11| |$V-reftype:10| |$knormal:7|) (|unzip$unknown:7| |$alpha-4:x|) (|unzip$unknown:8| |$knormal:7| |$knormal:8|) (|unzip$unknown:9| |$V-reftype:10| |$knormal:7| |$knormal:8|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:8| (- |$alpha-4:x| 1)) )
      (|unzip$unknown:10| |$V-reftype:11| |$V-reftype:10| |$knormal:7| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$alpha-4:x| Int) (|$knormal:15| Int) (|$knormal:17| Int) (|$knormal:13| Int) (|$V-reftype:35| Int) )
    (=>
      ( and (|unzip$unknown:10| |$knormal:17| |$knormal:15| |$knormal:13| |$alpha-4:x|) (|unzip$unknown:7| |$alpha-4:x|) |$knormal:6| (= |$V-reftype:35| |$knormal:17|) (= |$knormal:13| 0) (= |$knormal:15| 0) (= |$knormal:6| (= |$alpha-4:x| 0)) )
      (|unzip$unknown:11| |$V-reftype:35| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:8| Int) (|$knormal:12| Int) (|$alpha-4:x| Int) (|$V-reftype:37| Int) )
    (=>
      ( and (|unzip$unknown:11| |$knormal:12| |$knormal:8|) (|unzip$unknown:7| |$alpha-4:x|) (not |$knormal:6|) (= |$V-reftype:37| |$knormal:12|) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:8| (- |$alpha-4:x| 1)) )
      (|unzip$unknown:11| |$V-reftype:37| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$alpha-4:x| Int) (|$V-reftype:17| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|unzip$unknown:7| |$alpha-4:x|) (|unzip$unknown:8| |$V-reftype:17| |$knormal:8|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:8| (- |$alpha-4:x| 1)) )
      (|f$unknown:4| |$V-reftype:17|)
    )
  )
)
(assert
  (forall ( (|$knormal:6| Bool) (|$knormal:8| Int) (|$alpha-4:x| Int) (|$knormal:7| Int) (|$V-reftype:19| Int) )
    (=>
      ( and (|unzip$unknown:7| |$alpha-4:x|) (|unzip$unknown:8| |$knormal:7| |$knormal:8|) (|unzip$unknown:9| |$V-reftype:19| |$knormal:7| |$knormal:8|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:8| (- |$alpha-4:x| 1)) )
      (|f$unknown:5| |$V-reftype:19| |$knormal:7|)
    )
  )
)
(assert
  (forall ( (|$knormal:15| Int) (|$knormal:6| Bool) (|$alpha-4:x| Int) (|$knormal:13| Int) )
    (=>
      ( and (|unzip$unknown:7| |$alpha-4:x|) |$knormal:6| (= |$knormal:13| 0) (= |$knormal:15| 0) (= |$knormal:6| (= |$alpha-4:x| 0)) )
      (|unzip$unknown:8| |$knormal:13| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:13| Int) (|$alpha-4:x| Int) (|$knormal:6| Bool) (|$knormal:15| Int) )
    (=>
      ( and (|unzip$unknown:7| |$alpha-4:x|) |$knormal:6| (= |$knormal:13| 0) (= |$knormal:15| 0) (= |$knormal:6| (= |$alpha-4:x| 0)) )
      (|unzip$unknown:9| |$knormal:15| |$knormal:13| |$alpha-4:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:8| Int) (|$alpha-4:x| Int) (|$knormal:6| Bool) )
    (=>
      ( and (|unzip$unknown:7| |$alpha-4:x|) (not |$knormal:6|) (= |$knormal:6| (= |$alpha-4:x| 0)) (= |$knormal:8| (- |$alpha-4:x| 1)) )
      (|unzip$unknown:7| |$knormal:8|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Int) (|zip| Int) (|$alpha-8:n| Int) )
    (=>
      ( and (|unzip$unknown:8| |zip| |$alpha-8:n|) (|unzip$unknown:9| |$V-reftype:19| |zip| |$alpha-8:n|) )
      (|zip$unknown:13| |$V-reftype:19| |zip|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:28| Int) (|$alpha-8:n| Int) (|zip| Int) (|$V-reftype:27| Int) )
    (=>
      ( and (|unzip$unknown:8| |zip| |$alpha-8:n|) (|unzip$unknown:9| |$V-reftype:27| |zip| |$alpha-8:n|) (|zip$unknown:14| |$V-reftype:28| |$V-reftype:27| |zip|) )
      (|unzip$unknown:10| |$V-reftype:28| |$V-reftype:27| |zip| |$alpha-8:n|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:46| Int) (|$knormal:18| Bool) (|$knormal:22| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:24| Int) (|$knormal:20| Int) (|$knormal:19| Bool) )
    (=>
      ( and (|zip$unknown:12| |$alpha-6:x|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (|zip$unknown:14| |$knormal:24| |$knormal:22| |$knormal:20|) (not |$knormal:18|) (not |$knormal:19|) (= |$V-reftype:46| (+ 1 |$knormal:24|)) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= |$knormal:22| (- |$alpha-7:y| 1)) )
      (|zip$unknown:14| |$V-reftype:46| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (forall ( (|$knormal:26| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Bool) (|$V-reftype:40| Int) )
    (=>
      ( and (|zip$unknown:12| |$alpha-6:x|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) |$knormal:18| |$knormal:26| (= |$V-reftype:40| 0) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$knormal:26| (= |$alpha-7:y| 0)) )
      (|zip$unknown:14| |$V-reftype:40| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(assert
  (not (exists ( (|$knormal:26| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Bool) )
    ( and (|zip$unknown:12| |$alpha-6:x|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) |$knormal:18| (not |$knormal:26|) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$knormal:26| (= |$alpha-7:y| 0)) )
    )
  )
)
(assert
  (not (exists ( (|$knormal:18| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:19| Bool) )
    ( and (|zip$unknown:12| |$alpha-6:x|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) |$knormal:19| (not |$knormal:18|) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$knormal:19| (= |$alpha-7:y| 0)) )
    )
  )
)
(assert
  (forall ( (|$knormal:22| Int) (|$knormal:20| Int) (|$knormal:18| Bool) (|$alpha-7:y| Int) (|$alpha-6:x| Int) (|$knormal:19| Bool) )
    (=>
      ( and (|zip$unknown:12| |$alpha-6:x|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (not |$knormal:18|) (not |$knormal:19|) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= |$knormal:22| (- |$alpha-7:y| 1)) )
      (|zip$unknown:12| |$knormal:20|)
    )
  )
)
(assert
  (forall ( (|$knormal:19| Bool) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:18| Bool) (|$knormal:20| Int) (|$knormal:22| Int) )
    (=>
      ( and (|zip$unknown:12| |$alpha-6:x|) (|zip$unknown:13| |$alpha-7:y| |$alpha-6:x|) (not |$knormal:18|) (not |$knormal:19|) (= |$knormal:18| (= |$alpha-6:x| 0)) (= |$knormal:19| (= |$alpha-7:y| 0)) (= |$knormal:20| (- |$alpha-6:x| 1)) (= |$knormal:22| (- |$alpha-7:y| 1)) )
      (|zip$unknown:13| |$knormal:22| |$knormal:20|)
    )
  )
)
(check-sat)

