; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_twimaster.c_i2c_readAck.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_twimaster.c_i2c_readAck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWINT = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWEA = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@TWDR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @i2c_readAck() #0 {
  %1 = load i32, i32* @TWINT, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @TWEN, align 4
  %4 = shl i32 1, %3
  %5 = or i32 %2, %4
  %6 = load i32, i32* @TWEA, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  store i32 %8, i32* @TWCR, align 4
  br label %9

9:                                                ; preds = %16, %0
  %10 = load i32, i32* @TWCR, align 4
  %11 = load i32, i32* @TWINT, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %9

17:                                               ; preds = %9
  %18 = load i8, i8* @TWDR, align 1
  ret i8 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
