; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_write8_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_write8_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc87427_data = type { i64* }

@PC87427_REG_BANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pc87427_data*, i64, i64, i64, i64)* @pc87427_write8_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc87427_write8_bank(%struct.pc87427_data* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.pc87427_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pc87427_data* %0, %struct.pc87427_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.pc87427_data*, %struct.pc87427_data** %6, align 8
  %13 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PC87427_REG_BANK, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @outb(i64 %11, i64 %19)
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.pc87427_data*, %struct.pc87427_data** %6, align 8
  %23 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @outb(i64 %21, i64 %29)
  ret void
}

declare dso_local i32 @outb(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
