; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lbaselib.c_luaB_pcall.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lbaselib.c_luaB_pcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_MULTRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_pcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_pcall(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @luaL_checkany(i32* %4, i32 1)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @LUA_MULTRET, align 4
  %11 = call i32 @lua_pcall(i32* %6, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_pushboolean(i32* %12, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_insert(i32* %17, i32 1)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_gettop(i32* %19)
  ret i32 %20
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
