; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR8X16_REG_MASK_CTRL = common dso_local global i32 0, align 4
@AR8X16_MASK_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to reset switch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arswitch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @AR8X16_REG_MASK_CTRL, align 4
  %6 = load i32, i32* @AR8X16_MASK_CTRL_SOFT_RESET, align 4
  %7 = call i32 @arswitch_writereg(i32 %4, i32 %5, i32 %6)
  %8 = call i32 @DELAY(i32 1000)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AR8X16_REG_MASK_CTRL, align 4
  %11 = call i32 @arswitch_readreg(i32 %9, i32 %10)
  %12 = load i32, i32* @AR8X16_MASK_CTRL_SOFT_RESET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
