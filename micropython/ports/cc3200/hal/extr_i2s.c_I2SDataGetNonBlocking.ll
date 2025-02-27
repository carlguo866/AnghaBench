; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_i2s.c_I2SDataGetNonBlocking.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_i2s.c_I2SDataGetNonBlocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCASP_O_RXSTAT = common dso_local global i64 0, align 8
@MCASP_RXSTAT_RDATA = common dso_local global i32 0, align 4
@MCASP_O_RXBUF0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @I2SDataGetNonBlocking(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = sub i64 %8, 1
  %10 = shl i64 %9, 2
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MCASP_O_RXSTAT, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @HWREG(i64 %13)
  %15 = load i32, i32* @MCASP_RXSTAT_RDATA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MCASP_O_RXBUF0, align 8
  %21 = add i64 %19, %20
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @HWREG(i64 %23)
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  store i64 0, i64* %4, align 8
  br label %28

27:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i32 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
