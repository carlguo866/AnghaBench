; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_stats_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_stats_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @fsocket_stats_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fsocket_stats_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 1
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* inttoptr (i64 1 to i8*), i8* null
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
