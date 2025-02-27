; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i32* }

@PALMAS_SMPS_BASE = common dso_local global i32 0, align 4
@REGULATOR_SLAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas*, i32, i32)* @palmas_smps_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_smps_write(%struct.palmas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.palmas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.palmas* %0, %struct.palmas** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @PALMAS_BASE_TO_REG(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.palmas*, %struct.palmas** %4, align 8
  %12 = getelementptr inbounds %struct.palmas, %struct.palmas* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @REGULATOR_SLAVE, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @regmap_write(i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @PALMAS_BASE_TO_REG(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
