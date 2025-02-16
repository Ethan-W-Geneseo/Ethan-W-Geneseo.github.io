ggplot(data = mpg) + 
  geom_point(mapping = 
               aes(x = displ, 
                   y = hwy, 
                   shape = class) )

##can change the class with different things
like "shape", "alpha"#(transparency), color

ggplot(data = mpg) + 
  geom_point(mapping = 
               aes(x = displ, 
                   y = hwy, 
                   color = class) )

#stat.transformation
View(diamonds)
diamonds <- diamonds
geom_histogram(diamonds)
ggplot(diamonds,
       aes(color = "blue",
           x = price))

ggplot(data = diamonds,
       geom_bar(aes(mapping(x = cut, y = freq)))
           
ggplot(diamonds)+
  geom_bar(aes(x = cut, y = ))



ggplot(data = diamonds) + 
  geom_bar(mapping = 
             aes(x = cut, 
                 fill = cut))
##

##Q1a
#It will perform a regression of the variable displ against hwy.
#THere will be three smooth trend lines for each drv value 

#Q1b 
#It removes the legend for drv

#Q1c
#a
ggplot(data = mpg,
       mapping = aes(x =displ, y = hwy))+
      geom_point(shape = 19, alpha = 0.4)
        geom_smooth(se = false)
        
#b
ggplot(mpg, aes(x=displ, y = hwy, group = drv))+
+     geom_point(shape = 19, alpha = 0.4)+
+     geom_smooth(show.legend = F, se = FALSE)    

#C
ggplot(data = mpg, aes(x=displ, y=hwy, color=drv)) +
  +     geom_point(alpha=0.4, shape=19) +
  +     geom_smooth(se=FALSE)
#D

ggplot(mpg, aes(x = displ, y = hwy))+
   geom_point(aes(color = drv, group = drv), shape = 19, alpha = 0.4)+
   geom_smooth(se = FALSE)

#E
ggplot(mpg, aes(x = displ, y = hwy))+
  geom_point(aes(color = drv, group = drv), shape = 19, alpha = 0.4)+
  geom_smooth(aes(group = drv, linetype = drv), se = FALSE)

#F
 ggplot(data = mpg,
          aes(x = displ,  y = hwy, color = drv))+
   geom_point(color = 'white', size = 3)+
   geom_point( shape = 16, size = 2)
 