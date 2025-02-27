; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_read_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_read_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i64, i64, i32 (%struct.eeprom_93cx6*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*, i32*, i32)* @eeprom_93cx6_read_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_93cx6_read_bits(%struct.eeprom_93cx6* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.eeprom_93cx6*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %10 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %9, i32 0, i32 2
  %11 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %10, align 8
  %12 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %13 = call i32 %11(%struct.eeprom_93cx6* %12)
  %14 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %15 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %17 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %45, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %24 = call i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6* %23)
  %25 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %26 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %25, i32 0, i32 2
  %27 = load i32 (%struct.eeprom_93cx6*)*, i32 (%struct.eeprom_93cx6*)** %26, align 8
  %28 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %29 = call i32 %27(%struct.eeprom_93cx6* %28)
  %30 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %31 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %33 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = sub i32 %37, 1
  %39 = shl i32 1, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %22
  %43 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %4, align 8
  %44 = call i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6* %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i32 @eeprom_93cx6_pulse_high(%struct.eeprom_93cx6*) #1

declare dso_local i32 @eeprom_93cx6_pulse_low(%struct.eeprom_93cx6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
