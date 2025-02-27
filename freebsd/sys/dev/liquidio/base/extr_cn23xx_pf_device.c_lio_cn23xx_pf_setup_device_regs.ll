; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_device_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_setup_device_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }

@LIO_CN23XX_SLI_WINDOW_CTL = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_WINDOW_CTL_DEFAULT = common dso_local global i32 0, align 4
@LIO_CN23XX_SLI_PKT_IN_JABBER = common dso_local global i32 0, align 4
@LIO_CN23XX_MAX_INPUT_JABBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn23xx_pf_setup_device_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_setup_device_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %4 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %5 = call i32 @lio_cn23xx_pf_enable_error_reporting(%struct.octeon_device* %4)
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = call i32 @lio_cn23xx_pf_setup_global_mac_regs(%struct.octeon_device* %6)
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = call i64 @lio_cn23xx_pf_setup_global_input_regs(%struct.octeon_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = call i32 @lio_cn23xx_pf_setup_global_output_regs(%struct.octeon_device* %13)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load i32, i32* @LIO_CN23XX_SLI_WINDOW_CTL, align 4
  %17 = load i32, i32* @LIO_CN23XX_SLI_WINDOW_CTL_DEFAULT, align 4
  %18 = call i32 @lio_write_csr64(%struct.octeon_device* %15, i32 %16, i32 %17)
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = load i32, i32* @LIO_CN23XX_SLI_PKT_IN_JABBER, align 4
  %21 = load i32, i32* @LIO_CN23XX_MAX_INPUT_JABBER, align 4
  %22 = call i32 @lio_write_csr64(%struct.octeon_device* %19, i32 %20, i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @lio_cn23xx_pf_enable_error_reporting(%struct.octeon_device*) #1

declare dso_local i32 @lio_cn23xx_pf_setup_global_mac_regs(%struct.octeon_device*) #1

declare dso_local i64 @lio_cn23xx_pf_setup_global_input_regs(%struct.octeon_device*) #1

declare dso_local i32 @lio_cn23xx_pf_setup_global_output_regs(%struct.octeon_device*) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
