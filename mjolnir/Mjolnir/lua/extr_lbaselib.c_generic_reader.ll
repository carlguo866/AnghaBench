; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lbaselib.c_generic_reader.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lbaselib.c_generic_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@RESERVEDSLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64*)* @generic_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generic_reader(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @luaL_checkstack(i32* %9, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @lua_pushvalue(i32* %11, i32 1)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @lua_call(i32* %13, i32 0, i32 1)
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @lua_isnil(i32* %15, i32 -1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @lua_pop(i32* %19, i32 1)
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  store i8* null, i8** %4, align 8
  br label %38

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @lua_isstring(i32* %23, i32 -1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @RESERVEDSLOT, align 4
  %33 = call i32 @lua_replace(i32* %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @RESERVEDSLOT, align 4
  %36 = load i64*, i64** %7, align 8
  %37 = call i8* @lua_tolstring(i32* %34, i32 %35, i64* %36)
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %30, %18
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
