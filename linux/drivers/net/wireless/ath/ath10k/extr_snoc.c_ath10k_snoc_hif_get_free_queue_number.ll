; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_hif_get_free_queue_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_hif_get_free_queue_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hif get free queue number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i64)* @ath10k_snoc_hif_get_free_queue_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_hif_get_free_queue_number(%struct.ath10k* %0, i64 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath10k_snoc*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %6)
  store %struct.ath10k_snoc* %7, %struct.ath10k_snoc** %5, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %10 = call i32 @ath10k_dbg(%struct.ath10k* %8, i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ath10k_ce_num_free_src_entries(i32 %17)
  ret i32 %18
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_ce_num_free_src_entries(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
