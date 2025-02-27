; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq.c_mmc_pwrseq_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq.c_mmc_pwrseq_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_pwrseq = type { i32 }

@pwrseq_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_pwrseq_unregister(%struct.mmc_pwrseq* %0) #0 {
  %2 = alloca %struct.mmc_pwrseq*, align 8
  store %struct.mmc_pwrseq* %0, %struct.mmc_pwrseq** %2, align 8
  %3 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %2, align 8
  %4 = icmp ne %struct.mmc_pwrseq* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = call i32 @mutex_lock(i32* @pwrseq_list_mutex)
  %7 = load %struct.mmc_pwrseq*, %struct.mmc_pwrseq** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_pwrseq, %struct.mmc_pwrseq* %7, i32 0, i32 0
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @mutex_unlock(i32* @pwrseq_list_mutex)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
