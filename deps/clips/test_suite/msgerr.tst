(unwatch all)
(clear)
(setgen 1)
(dribble-on "Actual//msgerr.out")
(batch "msgerr.bat")
(dribble-off)
(clear)
(open "Results//msgerr.rsl" msgerr "w")
(load "compline.clp")
(printout msgerr "msgerr.clp differences are as follows:" crlf)
(compare-files "Expected//msgerr.out" "Actual//msgerr.out" msgerr)
(close msgerr)
