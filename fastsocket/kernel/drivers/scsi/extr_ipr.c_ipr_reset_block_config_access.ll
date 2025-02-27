; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_block_config_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_block_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ipr_reset_block_config_access_wait = common dso_local global i32 0, align 4
@IPR_WAIT_FOR_RESET_TIMEOUT = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_block_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_block_config_access(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %3 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %4 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @ipr_reset_block_config_access_wait, align 4
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @IPR_WAIT_FOR_RESET_TIMEOUT, align 4
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
