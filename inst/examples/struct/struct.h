struct Unnamed {
   int x;
   double y;
};

typedef struct {
   int x;
   double y;
} Named;

typedef struct Both {
   int x;
   double y;
} Both;

Named *named;
struct Unnamed *unnamed;
Both *both;
struct Both *alias;

