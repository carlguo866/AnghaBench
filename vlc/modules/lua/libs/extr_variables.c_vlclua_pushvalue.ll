; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_pushvalue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_pushvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@VLC_VAR_CLASS = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i64)* @vlclua_pushvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_pushvalue(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %2, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %3, i64* %10, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @VLC_VAR_CLASS, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %38 [
    i32 132, label %14
    i32 130, label %19
    i32 129, label %24
    i32 131, label %29
    i32 133, label %34
    i32 128, label %37
  ]

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lua_pushboolean(i32* %15, i32 %17)
  br label %41

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lua_pushinteger(i32* %20, i32 %22)
  br label %41

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lua_pushstring(i32* %25, i32 %27)
  br label %41

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lua_pushnumber(i32* %30, i32 %32)
  br label %41

34:                                               ; preds = %4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @vlclua_error(i32* %35)
  br label %41

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %4, %37
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @vlclua_error(i32* %39)
  br label %41

41:                                               ; preds = %38, %34, %29, %24, %19, %14
  ret i32 1
}

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @vlclua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
