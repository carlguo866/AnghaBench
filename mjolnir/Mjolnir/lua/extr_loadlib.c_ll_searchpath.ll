; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_loadlib.c_ll_searchpath.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_loadlib.c_ll_searchpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LUA_DIRSEP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ll_searchpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_searchpath(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @luaL_checkstring(i32* %6, i32 1)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_checkstring(i32* %8, i32 2)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_optstring(i32* %10, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i8*, i8** @LUA_DIRSEP, align 8
  %14 = call i32 @luaL_optstring(i32* %12, i32 4, i8* %13)
  %15 = call i8* @searchpath(i32* %5, i32 %7, i32 %9, i32 %11, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushnil(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_insert(i32* %22, i32 -2)
  store i32 2, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i8* @searchpath(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
