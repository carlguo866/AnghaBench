; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_counthash.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_tab.c_counthash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64*, i64*)* @counthash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @counthash(%struct.TYPE_6__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_5__* @noderef(i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %42, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %12, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @tvisnil(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64*, i64** %5, align 8
  %36 = call i64 @countint(i32* %34, i64* %35)
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %32, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load i64, i64* %8, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %7, align 8
  ret i64 %50
}

declare dso_local %struct.TYPE_5__* @noderef(i32) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i64 @countint(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
