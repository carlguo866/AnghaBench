; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_show_ddp_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_show_ddp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.tp_usm_stats = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"usm_ddp_frames:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"usm_ddp_octets:\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"usm_ddp_drops:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @show_ddp_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_ddp_stats(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.tp_usm_stats, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i32 0, i32 0
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = call i32 @t4_get_usm_stats(%struct.adapter* %11, %struct.tp_usm_stats* %4, i32 0)
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = getelementptr inbounds %struct.tp_usm_stats, %struct.tp_usm_stats* %4, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PRINT_ADAP_STATS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.tp_usm_stats, %struct.tp_usm_stats* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PRINT_ADAP_STATS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.tp_usm_stats, %struct.tp_usm_stats* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PRINT_ADAP_STATS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_get_usm_stats(%struct.adapter*, %struct.tp_usm_stats*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PRINT_ADAP_STATS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
