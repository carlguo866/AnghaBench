; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_bisearch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_bisearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.interval*, i32)* @bisearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisearch(i64 %0, %struct.interval* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.interval* %1, %struct.interval** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.interval*, %struct.interval** %6, align 8
  %12 = getelementptr inbounds %struct.interval, %struct.interval* %11, i64 0
  %13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.interval*, %struct.interval** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.interval, %struct.interval* %18, i64 %20
  %22 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %63

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.interval*, %struct.interval** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.interval, %struct.interval* %37, i64 %39
  %41 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %36, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %61

47:                                               ; preds = %31
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.interval*, %struct.interval** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.interval, %struct.interval* %49, i64 %51
  %53 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %60

59:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %63

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %44
  br label %27

62:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
