; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ltablib.c_foreach.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ltablib.c_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* @LUA_TTABLE, align 4
  %6 = call i32 @luaL_checktype(i32* %4, i32 1, i32 %5)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @LUA_TFUNCTION, align 4
  %9 = call i32 @luaL_checktype(i32* %7, i32 2, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_pushnil(i32* %10)
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_next(i32* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pushvalue(i32* %17, i32 2)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushvalue(i32* %19, i32 -3)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pushvalue(i32* %21, i32 -3)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_call(i32* %23, i32 2, i32 1)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_isnil(i32* %25, i32 -1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 2)
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
