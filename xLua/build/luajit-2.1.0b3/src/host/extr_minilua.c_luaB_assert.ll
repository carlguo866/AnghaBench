; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaB_assert.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaB_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_assert(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @luaL_checkany(i32* %4, i32 1)
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_toboolean(i32* %6, i32 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_optstring(i32* %11, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_gettop(i32* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
