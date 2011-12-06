typedef int(*BinaryFun)(int, int, void *);
int do_op(int a, int b, int (*op)(int,int));
int do_op1(int a, int b, int (*op)(int,int, void *), void *);

void *do_op_stack, *do_op_fun;

