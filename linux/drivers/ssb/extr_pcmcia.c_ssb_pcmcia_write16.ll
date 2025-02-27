; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*, i64, i64)* @ssb_pcmcia_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pcmcia_write16(%struct.ssb_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ssb_bus*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %11 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %10, i32 0, i32 0
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %11, align 8
  store %struct.ssb_bus* %12, %struct.ssb_bus** %7, align 8
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %18 = call i32 @select_core_and_segment(%struct.ssb_device* %17, i64* %5)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %28 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writew(i64 %26, i64 %31)
  br label %33

33:                                               ; preds = %25, %3
  %34 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %35 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @select_core_and_segment(%struct.ssb_device*, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @writew(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
