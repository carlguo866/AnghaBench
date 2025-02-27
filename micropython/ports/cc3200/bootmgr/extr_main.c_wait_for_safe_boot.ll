; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_wait_for_safe_boot.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_wait_for_safe_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BOOTMGR_WAIT_SAFE_MODE_0_MS = common dso_local global i32 0, align 4
@BOOTMGR_WAIT_SAFE_MODE_1_MS = common dso_local global i32 0, align 4
@BOOTMGR_WAIT_SAFE_MODE_1_BLINK_MS = common dso_local global i32 0, align 4
@BOOTMGR_WAIT_SAFE_MODE_2_MS = common dso_local global i32 0, align 4
@BOOTMGR_WAIT_SAFE_MODE_2_BLINK_MS = common dso_local global i32 0, align 4
@IMG_ACT_FACTORY = common dso_local global i32 0, align 4
@BOOTMGR_WAIT_SAFE_MODE_3_MS = common dso_local global i32 0, align 4
@BOOTMGR_WAIT_SAFE_MODE_3_BLINK_MS = common dso_local global i32 0, align 4
@MICROPY_SYS_LED_PORT = common dso_local global i32 0, align 4
@MICROPY_SYS_LED_PORT_PIN = common dso_local global i32 0, align 4
@PRCM_SAFE_BOOT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @wait_for_safe_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_safe_boot(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_0_MS, align 4
  %4 = call i64 @safe_boot_request_start(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_1_MS, align 4
  %8 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_1_BLINK_MS, align 4
  %9 = call i64 @wait_while_blinking(i32 %7, i32 %8, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_2_MS, align 4
  %18 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_2_BLINK_MS, align 4
  %19 = call i64 @wait_while_blinking(i32 %17, i32 %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load i32, i32* @IMG_ACT_FACTORY, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_3_MS, align 4
  %26 = load i32, i32* @BOOTMGR_WAIT_SAFE_MODE_3_BLINK_MS, align 4
  %27 = call i64 @wait_while_blinking(i32 %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %21, %11
  br label %29

29:                                               ; preds = %28, %6
  %30 = load i32, i32* @MICROPY_SYS_LED_PORT, align 4
  %31 = load i32, i32* @MICROPY_SYS_LED_PORT_PIN, align 4
  %32 = call i32 @MAP_GPIOPinWrite(i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* @PRCM_SAFE_BOOT_BIT, align 4
  %34 = call i32 @PRCMSetSpecialBit(i32 %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = call i32 (...) @mperror_deinit_sfe_pin()
  ret void
}

declare dso_local i64 @safe_boot_request_start(i32) #1

declare dso_local i64 @wait_while_blinking(i32, i32, i32) #1

declare dso_local i32 @MAP_GPIOPinWrite(i32, i32, i32) #1

declare dso_local i32 @PRCMSetSpecialBit(i32) #1

declare dso_local i32 @mperror_deinit_sfe_pin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
