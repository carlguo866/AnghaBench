; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_send_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_send_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmpd = type { i32, i32, i32 }
%struct.rpmpd_req = type { i32, i32, i32 }

@KEY_ENABLE = common dso_local global i32 0, align 4
@QCOM_SMD_RPM_ACTIVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmpd*, i32)* @rpmpd_send_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmpd_send_enable(%struct.rpmpd* %0, i32 %1) #0 {
  %3 = alloca %struct.rpmpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpmpd_req, align 4
  store %struct.rpmpd* %0, %struct.rpmpd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.rpmpd_req, %struct.rpmpd_req* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @cpu_to_le32(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.rpmpd_req, %struct.rpmpd_req* %5, i32 0, i32 1
  %10 = call i32 @cpu_to_le32(i32 4)
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.rpmpd_req, %struct.rpmpd_req* %5, i32 0, i32 2
  %12 = load i32, i32* @KEY_ENABLE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %14 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QCOM_SMD_RPM_ACTIVE_STATE, align 4
  %17 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %18 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rpmpd*, %struct.rpmpd** %3, align 8
  %21 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qcom_rpm_smd_write(i32 %15, i32 %16, i32 %19, i32 %22, %struct.rpmpd_req* %5, i32 12)
  ret i32 %23
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_rpm_smd_write(i32, i32, i32, i32, %struct.rpmpd_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
