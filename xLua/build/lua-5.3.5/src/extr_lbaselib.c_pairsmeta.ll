; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lbaselib.c_pairsmeta.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lbaselib.c_pairsmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TNIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @pairsmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pairsmeta(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @luaL_checkany(i32* %9, i32 1)
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @luaL_getmetafield(i32* %11, i32 1, i8* %12)
  %14 = load i64, i64* @LUA_TNIL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @lua_pushcfunction(i32* %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 1)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lua_pushinteger(i32* %25, i32 0)
  br label %30

27:                                               ; preds = %16
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %36

31:                                               ; preds = %4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @lua_pushvalue(i32* %32, i32 1)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @lua_call(i32* %34, i32 1, i32 3)
  br label %36

36:                                               ; preds = %31, %30
  ret i32 3
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i64 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
