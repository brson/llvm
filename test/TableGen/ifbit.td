// RUN: llvm-tblgen %s | FileCheck %s
// CHECK: a = 6
// CHECK: a = 5

class A<bit b = 1> {
  int a = !if(b, 5, 6);
}

def X : A<0>;
def Y : A;
