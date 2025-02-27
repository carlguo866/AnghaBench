; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_filter.h_ef4_filter_init_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_filter.h_ef4_filter_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_filter_spec = type { i32, i32, i32, i32 }

@EF4_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EF4_FILTER_RSS_CONTEXT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_filter_spec*, i32, i32, i32)* @ef4_filter_init_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_filter_init_rx(%struct.ef4_filter_spec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ef4_filter_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ef4_filter_spec* %0, %struct.ef4_filter_spec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %5, align 8
  %10 = call i32 @memset(%struct.ef4_filter_spec* %9, i32 0, i32 16)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %5, align 8
  %13 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @EF4_FILTER_FLAG_RX, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %5, align 8
  %18 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @EF4_FILTER_RSS_CONTEXT_DEFAULT, align 4
  %20 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %5, align 8
  %21 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %5, align 8
  %24 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ef4_filter_spec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
