; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_tconcat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_tconcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@luaL_checkint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tconcat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tconcat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_optlstring(i32* %8, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64* %4)
  store i8* %9, i8** %7, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @luaL_checktype(i32* %10, i32 1, i32 5)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @luaL_optint(i32* %12, i32 3, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @luaL_checkint, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @luaL_getn(i32* %16, i32 1)
  %18 = call i32 @luaL_opt(i32* %14, i32 %15, i32 4, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @luaL_buffinit(i32* %19, i32* %3)
  br label %21

21:                                               ; preds = %32, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @addfield(i32* %26, i32* %3, i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @luaL_addlstring(i32* %3, i8* %29, i64 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @addfield(i32* %40, i32* %3, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = call i32 @luaL_pushresult(i32* %3)
  ret i32 1
}

declare dso_local i8* @luaL_optlstring(i32*, i32, i8*, i64*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_optint(i32*, i32, i32) #1

declare dso_local i32 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @luaL_getn(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @addfield(i32*, i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
