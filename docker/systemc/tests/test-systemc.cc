#include <iostream>
#include <systemc.h>

SC_MODULE(Top) {
    SC_CTOR(Top) {
        SC_METHOD(hello);
    }

    void hello(void) {
        SC_REPORT_INFO("hello", name());
    }
};

int sc_main(int argc, char* argv[]) {
    Top top("top");
    sc_core::sc_start();
    return(0);
}
