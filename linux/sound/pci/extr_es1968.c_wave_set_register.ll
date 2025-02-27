; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_wave_set_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_wave_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32, i64 }

@WC_INDEX = common dso_local global i64 0, align 8
@WC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i32, i32)* @wave_set_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wave_set_register(%struct.es1968* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.es1968*, %struct.es1968** %4, align 8
  %9 = getelementptr inbounds %struct.es1968, %struct.es1968* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.es1968*, %struct.es1968** %4, align 8
  %14 = getelementptr inbounds %struct.es1968, %struct.es1968* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WC_INDEX, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outw(i32 %12, i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.es1968*, %struct.es1968** %4, align 8
  %21 = getelementptr inbounds %struct.es1968, %struct.es1968* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WC_DATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outw(i32 %19, i64 %24)
  %26 = load %struct.es1968*, %struct.es1968** %4, align 8
  %27 = getelementptr inbounds %struct.es1968, %struct.es1968* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
