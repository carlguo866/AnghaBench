; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_is_contains.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_is_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i32, %struct.Range6* }
%struct.Range6 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @range6list_is_contains(%struct.Range6List* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Range6List*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Range6*, align 8
  store %struct.Range6List* %0, %struct.Range6List** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %11 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %16 = getelementptr inbounds %struct.Range6List, %struct.Range6List* %15, i32 0, i32 1
  %17 = load %struct.Range6*, %struct.Range6** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Range6, %struct.Range6* %17, i64 %19
  store %struct.Range6* %20, %struct.Range6** %7, align 8
  %21 = load %struct.Range6*, %struct.Range6** %7, align 8
  %22 = getelementptr inbounds %struct.Range6, %struct.Range6* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @LESSEQ(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.Range6*, %struct.Range6** %7, align 8
  %30 = getelementptr inbounds %struct.Range6, %struct.Range6* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @LESSEQ(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %40

35:                                               ; preds = %27, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %8

39:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @LESSEQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
