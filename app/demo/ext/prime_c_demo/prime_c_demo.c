#include "ruby.h"

void Init_line_matcher();
VALUE divisors(VALUE self, VALUE number);

void Init_prime_demo() {
  VALUE mPrime = rb_define_module("PrimeC");
  VALUE mDemo = rb_define_module_under(mPrime, "Demo");
  rb_define_module_function(mDemo, "divisors", divisors, 1);
}

VALUE divisors(VALUE self, VALUE number) {
  VALUE result = rb_ary_new();
  int i = 2;
  long nr = rb_num2long(number);
  while(nr > i){
    if(nr % i == 0){
      rb_ary_push(result, INT2NUM(i));
    }
    i++;
  }

  return result;
}
