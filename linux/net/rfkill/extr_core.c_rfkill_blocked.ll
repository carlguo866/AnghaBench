; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_blocked.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_core.c_rfkill_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32 }

@RFKILL_BLOCK_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfkill_blocked(%struct.rfkill* %0) #0 {
  %2 = alloca %struct.rfkill*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %2, align 8
  %5 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %6 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %10 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.rfkill*, %struct.rfkill** %2, align 8
  %13 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RFKILL_BLOCK_ANY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
