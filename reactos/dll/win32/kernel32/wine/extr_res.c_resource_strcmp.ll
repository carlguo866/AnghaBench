; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_resource_strcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_resource_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @resource_strcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resource_strcmp(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @IS_INTRESOURCE(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @IS_INTRESOURCE(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @lstrcmpW(i64 %19, i64 %20)
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %14, %10
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @IS_INTRESOURCE(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @IS_INTRESOURCE(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %46

31:                                               ; preds = %26, %22
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @IS_INTRESOURCE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @IS_INTRESOURCE(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

40:                                               ; preds = %35, %31
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 -1, i32 1
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %39, %30, %18, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @IS_INTRESOURCE(i64) #1

declare dso_local i32 @lstrcmpW(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
