; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_agg_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_agg_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aggregator*)* @__get_agg_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_agg_bandwidth(%struct.aggregator* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aggregator* %0, %struct.aggregator** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %6 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %11 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__get_link_speed(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %39 [
    i32 128, label %15
    i32 129, label %19
    i32 130, label %24
    i32 131, label %29
    i32 132, label %34
  ]

15:                                               ; preds = %9
  %16 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %17 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %9
  %20 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %21 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 10
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %9
  %25 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %26 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 100
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %9
  %30 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %31 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %9
  %35 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %36 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 10000
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %29, %24, %19, %15
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @__get_link_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
