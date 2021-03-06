DELETE startup.ks.
TOGGLE BRAKES. // DISABLE DISH
TOGGLE GEAR.   // Disable long-range omni, enable short-range omni

UNTIL ETA:APOAPSIS < 20 {
  PRINT ETA:APOAPSIS.
  WAIT 0.01.
}

SET direction TO RETROGRADE.
LOCK STEERING TO direction.
WAIT 10.
LOCK THROTTLE TO 1.

WAIT UNTIL PERIAPSIS < 50000.
LOCK THROTTLE TO 0.

LOCK STEERING TO RETROGRADE.
WAIT UNTIL ETA:PERIAPSIS < 10.
LOCK THROTTLE TO 1.

SET prevThrust TO MAXTHRUST.
WAIT UNTIL MAXTHRUST < (prevThrust - 10).
WAIT 2.
PRINT "Staging. No more control. Good luck!".
STAGE.
