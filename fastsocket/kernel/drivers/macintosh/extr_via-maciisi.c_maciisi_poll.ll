; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-maciisi.c_maciisi_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-maciisi.c_maciisi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via = common dso_local global i32* null, align 8
@IFR = common dso_local global i64 0, align 8
@SR_INT = common dso_local global i32 0, align 4
@ADB_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maciisi_poll() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @local_irq_save(i64 %2)
  %4 = load i32*, i32** @via, align 8
  %5 = load i64, i64* @IFR, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SR_INT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @maciisi_interrupt(i32 0, i32* null)
  br label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @ADB_DELAY, align 4
  %15 = call i32 @udelay(i32 %14)
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @local_irq_restore(i64 %17)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @maciisi_interrupt(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
