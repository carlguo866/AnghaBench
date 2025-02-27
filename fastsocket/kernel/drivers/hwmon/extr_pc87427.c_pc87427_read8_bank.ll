; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87427.c_pc87427_read8_bank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87427.c_pc87427_read8_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc87427_data = type { i64* }

@PC87427_REG_BANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pc87427_data*, i64, i64, i64)* @pc87427_read8_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc87427_read8_bank(%struct.pc87427_data* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pc87427_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pc87427_data* %0, %struct.pc87427_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %11 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PC87427_REG_BANK, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @outb(i64 %9, i64 %17)
  %19 = load %struct.pc87427_data*, %struct.pc87427_data** %5, align 8
  %20 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  ret i32 %27
}

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
