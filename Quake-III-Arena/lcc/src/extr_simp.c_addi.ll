; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_simp.c_addi.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_simp.c_addi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"overflow in constant expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32)* @addi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addi(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %55, label %29

29:                                               ; preds = %23, %20, %17
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %6, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %6, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* %7, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp sle i64 %48, %51
  br label %53

53:                                               ; preds = %47, %44, %41
  %54 = phi i1 [ false, %44 ], [ false, %41 ], [ %52, %47 ]
  br label %55

55:                                               ; preds = %53, %38, %32, %23, %14, %5
  %56 = phi i1 [ true, %38 ], [ true, %32 ], [ true, %23 ], [ true, %14 ], [ true, %5 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %60, %55
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
