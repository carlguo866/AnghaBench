; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_stmt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32*)* @seta_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seta_stmt(i64** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64** %0, i64*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64**, i64*** %4, align 8
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %6, align 8
  %10 = call i32 @seta_assignment(i64** %6, i32* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @_T(i8 signext 44)
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = call i64* @skip_ws(i64* %22)
  store i64* %23, i64** %6, align 8
  %24 = call i32 @seta_assignment(i64** %6, i32* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %20
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64*, i64** %6, align 8
  %33 = load i64**, i64*** %4, align 8
  store i64* %32, i64** %33, align 8
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %26, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @seta_assignment(i64**, i32*) #1

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i64* @skip_ws(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
