; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_codecomp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_codecomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@OP_EQ = common dso_local global i64 0, align 8
@VJMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, %struct.TYPE_10__*, %struct.TYPE_10__*)* @codecomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codecomp(i32* %0, i64 %1, i32 %2, %struct.TYPE_10__* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %16 = call i32 @luaK_exp2RK(i32* %14, %struct.TYPE_10__* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = call i32 @luaK_exp2RK(i32* %17, %struct.TYPE_10__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = call i32 @freeexp(i32* %20, %struct.TYPE_10__* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = call i32 @freeexp(i32* %23, %struct.TYPE_10__* %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @OP_EQ, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28, %5
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @condjump(i32* %37, i64 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @VJMP, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @luaK_exp2RK(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @freeexp(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @condjump(i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
