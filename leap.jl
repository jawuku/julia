"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400

;; from a Clojure program I wrote - first implementation
(defn leap-year? [year]
 (cond
   (zero? (mod year 400))
   true
   (and (zero? (mod year 4)) (not (zero? (mod year 100))))
   true
   :else
   false))

;; 2nd look - this one I translated into Julia
(defn leap-year? [year]
  (or (zero? (mod year 400))
  
      (and (zero? (mod year 4))
        (not (zero? (mod year 100))))))

"""
function is_leap_year(year::Int64)
  ((year % 400) == 0) || (((year % 4) == 0) && ((year % 100) != 0))
end
