; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_check_eeprom_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_check_eeprom_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32 (%struct.ath_hw*, i32, i32*, i32)*, i32)* @ar9300_check_eeprom_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_check_eeprom_header(%struct.ath_hw* %0, i32 (%struct.ath_hw*, i32, i32*, i32)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32 (%struct.ath_hw*, i32, i32*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 (%struct.ath_hw*, i32, i32*, i32)* %1, i32 (%struct.ath_hw*, i32, i32*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %6, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %13 = call i32 %9(%struct.ath_hw* %10, i32 %11, i32* %12, i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %18 = call i32 @ar9300_check_header(i32* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @ar9300_check_header(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
