; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_fetch_and_print_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_fetch_and_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ratestats = type { i32 }
%struct.ether_addr = type { i32 }

@STATS_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_ratestats*, %struct.ether_addr*, i32*)* @fetch_and_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_and_print_stats(%struct.ath_ratestats* %0, %struct.ether_addr* %1, i32* %2) #0 {
  %4 = alloca %struct.ath_ratestats*, align 8
  %5 = alloca %struct.ether_addr*, align 8
  %6 = alloca i32*, align 8
  store %struct.ath_ratestats* %0, %struct.ath_ratestats** %4, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* @STATS_BUF_SIZE, align 4
  %9 = call i32 @memset(i32* %7, i8 signext 0, i32 %8)
  %10 = load %struct.ath_ratestats*, %struct.ath_ratestats** %4, align 8
  %11 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %12 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ath_setsta(%struct.ath_ratestats* %10, i32 %13)
  %15 = load %struct.ath_ratestats*, %struct.ath_ratestats** %4, align 8
  %16 = call i32 @ath_rate_ioctl(%struct.ath_ratestats* %15)
  %17 = load %struct.ath_ratestats*, %struct.ath_ratestats** %4, align 8
  %18 = load %struct.ether_addr*, %struct.ether_addr** %5, align 8
  %19 = call i32 @rate_node_stats(%struct.ath_ratestats* %17, %struct.ether_addr* %18)
  ret void
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @ath_setsta(%struct.ath_ratestats*, i32) #1

declare dso_local i32 @ath_rate_ioctl(%struct.ath_ratestats*) #1

declare dso_local i32 @rate_node_stats(%struct.ath_ratestats*, %struct.ether_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
