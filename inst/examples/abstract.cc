class Abstract {

public:
    virtual void foo() = 0;
};

class MyAbstract : public Abstract {

public:
    virtual void foo() {
        x++;
    }
protected:
    int x;
};

int foo()
{
    MyAbstract a;
    a.foo();
}
