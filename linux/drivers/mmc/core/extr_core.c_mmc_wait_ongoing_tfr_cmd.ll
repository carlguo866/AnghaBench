; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_wait_ongoing_tfr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_wait_ongoing_tfr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_wait_ongoing_tfr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_wait_ongoing_tfr_cmd(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mmc_request* @READ_ONCE(i32 %6)
  store %struct.mmc_request* %7, %struct.mmc_request** %3, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %9 = icmp ne %struct.mmc_request* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = call i32 @completion_done(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %16, i32 0, i32 0
  %18 = call i32 @wait_for_completion(i32* %17)
  br label %19

19:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local %struct.mmc_request* @READ_ONCE(i32) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
