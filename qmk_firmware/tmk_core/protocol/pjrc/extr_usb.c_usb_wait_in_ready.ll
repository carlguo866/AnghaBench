; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb.c_usb_wait_in_ready.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb.c_usb_wait_in_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UEINTX = common dso_local global i32 0, align 4
@TXINI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usb_wait_in_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_wait_in_ready() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %2 = load i32, i32* @UEINTX, align 4
  %3 = load i32, i32* @TXINI, align 4
  %4 = shl i32 1, %3
  %5 = and i32 %2, %4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %1

9:                                                ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
