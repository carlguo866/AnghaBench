; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*, i32*)* @bfe_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_read_eeprom(%struct.bfe_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32* %7, i32** %6, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp slt i64 %9, 128
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 4096, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @CSR_READ_4(%struct.bfe_softc* %12, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sdiv i64 %18, 2
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 2
  store i64 %23, i64* %5, align 8
  br label %8

24:                                               ; preds = %8
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
