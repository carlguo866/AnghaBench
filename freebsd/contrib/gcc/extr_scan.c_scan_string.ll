; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_scan.c_scan_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_scan.c_scan_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_string(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %40, %38, %3
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @getc(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %8
  br label %44

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @getc(i32* %23)
  store i32 %24, i32* %7, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @getc(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @EOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %8

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @SSTRING_PUT(%struct.TYPE_5__* %41, i32 %42)
  br label %8

44:                                               ; preds = %34, %22, %17
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = call i32 @MAKE_SSTRING_SPACE(%struct.TYPE_5__* %45, i32 1)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @SSTRING_PUT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @MAKE_SSTRING_SPACE(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
