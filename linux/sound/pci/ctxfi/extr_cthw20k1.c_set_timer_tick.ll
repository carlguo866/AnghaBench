; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_set_timer_tick.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_set_timer_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }

@TIMR_IE = common dso_local global i32 0, align 4
@TIMR_IP = common dso_local global i32 0, align 4
@TIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32)* @set_timer_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timer_tick(%struct.hw* %0, i32 %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @TIMR_IE, align 4
  %9 = load i32, i32* @TIMR_IP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %7, %2
  %14 = load %struct.hw*, %struct.hw** %3, align 8
  %15 = load i32, i32* @TIMR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @hw_write_20kx(%struct.hw* %14, i32 %15, i32 %16)
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
