; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfcConvertRateOFDM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfcConvertRateOFDM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcConvertRateOFDM(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @zmw_rx_buf_readb(i32* %6, i32* %7, i32 0)
  %9 = and i32 %8, 15
  switch i32 %9, label %18 [
    i32 11, label %10
    i32 15, label %11
    i32 10, label %12
    i32 14, label %13
    i32 9, label %14
    i32 13, label %15
    i32 8, label %16
    i32 12, label %17
  ]

10:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %18

11:                                               ; preds = %2
  store i32 5, i32* %5, align 4
  br label %18

12:                                               ; preds = %2
  store i32 6, i32* %5, align 4
  br label %18

13:                                               ; preds = %2
  store i32 7, i32* %5, align 4
  br label %18

14:                                               ; preds = %2
  store i32 8, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  store i32 9, i32* %5, align 4
  br label %18

16:                                               ; preds = %2
  store i32 10, i32* %5, align 4
  br label %18

17:                                               ; preds = %2
  store i32 11, i32* %5, align 4
  br label %18

18:                                               ; preds = %2, %17, %16, %15, %14, %13, %12, %11, %10
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
