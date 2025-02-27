; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_windowfuncs.c_leadlag_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_windowfuncs.c_leadlag_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@WINDOW_SEEK_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @leadlag_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leadlag_common(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = call i32 (...) @PG_WINDOW_OBJECT()
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @WinGetFuncArgCurrent(i32 %20, i32 1, i32* %14)
  %22 = call i32 @DatumGetInt32(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @PG_RETURN_NULL()
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_fn_expr_arg_stable(i32 %30, i32 1)
  store i32 %31, i32* %12, align 4
  br label %33

32:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ]
  %44 = load i32, i32* @WINDOW_SEEK_CURRENT, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @WinGetFuncArgInPartition(i32 %34, i32 0, i32 %43, i32 %44, i32 %45, i32* %14, i32* %15)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @WinGetFuncArgCurrent(i32 %53, i32 2, i32* %14)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @PG_RETURN_NULL()
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @PG_RETURN_DATUM(i32 %62)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @PG_WINDOW_OBJECT(...) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @WinGetFuncArgCurrent(i32, i32, i32*) #1

declare dso_local i32 @PG_RETURN_NULL(...) #1

declare dso_local i32 @get_fn_expr_arg_stable(i32, i32) #1

declare dso_local i32 @WinGetFuncArgInPartition(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @PG_RETURN_DATUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
