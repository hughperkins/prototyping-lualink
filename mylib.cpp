#include <iostream>
using namespace std;

extern "C" {
  #include "lua.h"
  #include "lauxlib.h"
  int luaopen_mylib( lua_State *L);
}

static int mylib_sayHello(lua_State *L)
{
  cout << "hello!" << endl;
  return 0;
}

static const struct luaL_Reg mylib_funcs [] = {
  {"sayHello", mylib_sayHello},
  {NULL, NULL}
};

int luaopen_mylib( lua_State *L) {
  luaL_register(L, "mylib", mylib_funcs);

  return 1;
}

