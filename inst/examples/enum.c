enum  BaseColor {
  RED,
  GREEN,
  BLUE
};

typedef enum {
	OFF,
	ON
} SwitchStatus;

typedef enum X {ABC, DEF} Bob;

enum BaseColor
getColor(enum BaseColor val)
{
   return(RED);
}

SwitchStatus 
setStatus(SwitchStatus val)
{
   return(ON);
}

Bob foo(Bob val) 
{
   return(val);
}
