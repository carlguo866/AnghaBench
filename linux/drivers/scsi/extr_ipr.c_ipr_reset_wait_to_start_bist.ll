; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_wait_to_start_bist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_wait_to_start_bist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_2__, %struct.ipr_ioa_cfg* }
%struct.TYPE_2__ = type { i64 }
%struct.ipr_ioa_cfg = type { i32 }

@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_CHECK_FOR_RESET_TIMEOUT = common dso_local global i64 0, align 8
@ipr_reset_block_config_access = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_wait_to_start_bist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_wait_to_start_bist(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 2
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %3, align 8
  %8 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %10 = call i32 @ipr_reset_allowed(%struct.ipr_ioa_cfg* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i64, i64* @IPR_CHECK_FOR_RESET_TIMEOUT, align 8
  %20 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %21 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, %19
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %26 = load i64, i64* @IPR_CHECK_FOR_RESET_TIMEOUT, align 8
  %27 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %25, i64 %26)
  br label %33

28:                                               ; preds = %12, %1
  %29 = load i32, i32* @ipr_reset_block_config_access, align 4
  %30 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %31 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %18
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ipr_reset_allowed(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
