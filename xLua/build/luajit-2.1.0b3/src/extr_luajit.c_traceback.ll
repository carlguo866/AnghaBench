; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_traceback.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_traceback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @traceback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traceback(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @lua_isstring(i32* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @lua_isnoneornil(i32* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_callmeta(i32* %12, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_isstring(i32* %16, i32 -1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %7
  store i32 1, i32* %2, align 4
  br label %29

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_remove(i32* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_tostring(i32* %26, i32 1)
  %28 = call i32 @luaL_traceback(i32* %24, i32* %25, i32 %27, i32 1)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @luaL_callmeta(i32*, i32, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @luaL_traceback(i32*, i32*, i32, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
