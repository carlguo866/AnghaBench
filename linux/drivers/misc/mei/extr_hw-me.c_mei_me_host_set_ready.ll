; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_host_set_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_host_set_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }

@H_CSR_IE_MASK = common dso_local global i32 0, align 4
@H_IG = common dso_local global i32 0, align 4
@H_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*)* @mei_me_host_set_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_host_set_ready(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %5 = call i32 @mei_hcsr_read(%struct.mei_device* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @H_CSR_IE_MASK, align 4
  %7 = load i32, i32* @H_IG, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @H_RDY, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @mei_hcsr_set(%struct.mei_device* %13, i32 %14)
  ret void
}

declare dso_local i32 @mei_hcsr_read(%struct.mei_device*) #1

declare dso_local i32 @mei_hcsr_set(%struct.mei_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
