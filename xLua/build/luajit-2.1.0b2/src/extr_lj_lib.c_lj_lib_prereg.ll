; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lj_lib_prereg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lj_lib_prereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_PRELOAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_lib_prereg(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = call i32 @luaL_findtable(%struct.TYPE_9__* %9, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @lua_pushcfunction(%struct.TYPE_9__* %12, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call %struct.TYPE_10__* @funcV(i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @obj2gco(i32* %23)
  %25 = call i32 @setgcref(i32 %22, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @lua_setfield(%struct.TYPE_9__* %26, i32 -2, i8* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  ret void
}

declare dso_local i32 @luaL_findtable(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @lua_pushcfunction(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local %struct.TYPE_10__* @funcV(i64) #1

declare dso_local i32 @obj2gco(i32*) #1

declare dso_local i32 @lua_setfield(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
