; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_reference.c_xdr_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_reference.c_xdr_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"xdr_reference: out of memory\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_reference(%struct.TYPE_6__* %0, i32** %1, i32 %2, i32 (%struct.TYPE_6__*, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.TYPE_6__*, i32*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.TYPE_6__*, i32*)* %3, i32 (%struct.TYPE_6__*, i32*)** %9, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 130, label %22
    i32 129, label %37
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mem_alloc(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load i32**, i32*** %7, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %55

33:                                               ; preds = %22
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @memset(i32* %34, i32 0, i32 %35)
  br label %38

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %16, %37, %33
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 %40(%struct.TYPE_6__* %41, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @mem_free(i32* %49, i32 %50)
  %52 = load i32**, i32*** %7, align 8
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %39
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %30, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mem_alloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
