; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaL_checkudata.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaL_checkudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*)* @luaL_checkudata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @luaL_checkudata(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @lua_touserdata(i32* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @lua_getmetatable(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @lua_getfield(i32* %20, i32 -10000, i8* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @lua_rawequal(i32* %23, i32 -1, i32 -2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_pop(i32* %27, i32 2)
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %4, align 8
  br label %37

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @luaL_typerror(i32* %33, i32 %34, i8* %35)
  store i8* null, i8** %4, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_rawequal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_typerror(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
