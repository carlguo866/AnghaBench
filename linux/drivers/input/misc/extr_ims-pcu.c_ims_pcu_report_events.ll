; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i64, i32* }

@IMS_PCU_GAMEPAD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*)* @ims_pcu_report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_report_events(%struct.ims_pcu* %0) #0 {
  %2 = alloca %struct.ims_pcu*, align 8
  %3 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %2, align 8
  %4 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %5 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = call i32 @get_unaligned_be32(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IMS_PCU_GAMEPAD_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @ims_pcu_buttons_report(%struct.ims_pcu* %9, i32 %13)
  %15 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %16 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ims_pcu_gamepad_report(%struct.ims_pcu* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ims_pcu_buttons_report(%struct.ims_pcu*, i32) #1

declare dso_local i32 @ims_pcu_gamepad_report(%struct.ims_pcu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
