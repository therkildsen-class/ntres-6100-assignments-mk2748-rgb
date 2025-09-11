library(tidyverse)

mpg
?mpg

?cars


View(mpg)

head(cars)
head(cars,4)
tail(cars)


ggplot(Data = mpg) + 
  geom_point(mapping = aes(x = displ, y= hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y= hwy))


ggplot(data=mpg)
ggplot(data=mpg) + geom_point(mapping = aes(x=cyl, y=hwy))
ggplot(data=mpg) + geom_point(mapping = aes(x=class, y=drv))

ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = class,size = cyl), shape = 1)

?geom_point

ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = class,size = cyl), 
                              shape = 2)

ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = class,size = cyl), 
                              shape = 2)
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = class,size = cyl), 
                              shape = 3)

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = "blue"))

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = year))
ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = "blue"))

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = "coral1"))

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy), color = "blue")

ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy), color = "coral1")



ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = class,size = cyl), 
                              shape = 1)

ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = class,size = cyl), 
                              shape = 1) + geom_smooth(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color = 
  class,size = cyl), shape = 2) + geom_smooth(mapping=aes(x=displ, y=hwy))

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) + geom_point(mapping = aes(x=displ, y=hwy, color = 
 class,size = cyl), shape = 2) + geom_smooth()


ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) + geom_point(mapping = aes(x=displ, y=hwy), color = 
class,size = cyl), shape = 2) + geom_smooth()

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) + geom_point(mapping = aes(x=displ, y=hwy), color = blue
                                                         , size = cyl), shape = 2) + geom_smooth()

ggplot(data = mpg, mapping=aes(x=displ, y=hwy)) + geom_point(mapping = aes(color =class, size=cyl)), shape =1 +geom_smooth() + facet_wrap(~year, nrow=1)


ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class, size = cyl), shape = 1) +
  geom_smooth() +
  facet_wrap(~ year, nrow=1)


ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class, size = cyl), shape = 1) +
  geom_smooth() +
  facet_wrap(~ class)

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) + 
  geom_point(mapping = aes(x=displ, y=hwy, size = cyl), color = "blue", shape = 2) + geom_smooth()
