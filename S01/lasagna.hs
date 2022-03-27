module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

expectedMinutesInOven = 40

preparationTimeInMinutes x = x * 2

elapsedTimeInMinutes number min = preparationTimeInMinutes number + min