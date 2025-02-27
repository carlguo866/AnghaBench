; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_dev_admin_queue_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_dev_admin_queue_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_stats = type { i64 }
%struct.ena_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENA_STATS_ARRAY_ENA_COM = common dso_local global i32 0, align 4
@ena_stats_ena_com_strings = common dso_local global %struct.ena_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32**)* @ena_dev_admin_queue_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_dev_admin_queue_stats(%struct.ena_adapter* %0, i32** %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.ena_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ENA_STATS_ARRAY_ENA_COM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_ena_com_strings, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %13, i64 %15
  store %struct.ena_stats* %16, %struct.ena_stats** %5, align 8
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = ptrtoint i32* %21 to i64
  %23 = load %struct.ena_stats*, %struct.ena_stats** %5, align 8
  %24 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %30, align 8
  store i32 %29, i32* %31, align 4
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
