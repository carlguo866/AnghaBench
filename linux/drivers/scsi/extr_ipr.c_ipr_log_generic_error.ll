; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_generic_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_log_generic_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_hostrcb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_hostrcb*)* @ipr_log_generic_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_generic_error(%struct.ipr_ioa_cfg* %0, %struct.ipr_hostrcb* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_hostrcb*, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_hostrcb* %1, %struct.ipr_hostrcb** %4, align 8
  %5 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %6 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %7 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %4, align 8
  %13 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = call i32 @ipr_log_hex_data(%struct.ipr_ioa_cfg* %5, i32 %11, i32 %16)
  ret void
}

declare dso_local i32 @ipr_log_hex_data(%struct.ipr_ioa_cfg*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
