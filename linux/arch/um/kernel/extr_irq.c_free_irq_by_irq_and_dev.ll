; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_free_irq_by_irq_and_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_free_irq_by_irq_and_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_entry = type { %struct.irq_entry* }

@irq_lock = common dso_local global i32 0, align 4
@active_fds = common dso_local global %struct.irq_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @free_irq_by_irq_and_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_irq_by_irq_and_dev(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irq_entry*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @irq_lock, i64 %7)
  %9 = load %struct.irq_entry*, %struct.irq_entry** @active_fds, align 8
  store %struct.irq_entry* %9, %struct.irq_entry** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %12 = icmp ne %struct.irq_entry* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @do_free_by_irq_and_dev(%struct.irq_entry* %14, i32 %15, i8* %16, i32 0)
  %18 = load %struct.irq_entry*, %struct.irq_entry** %5, align 8
  %19 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %18, i32 0, i32 0
  %20 = load %struct.irq_entry*, %struct.irq_entry** %19, align 8
  store %struct.irq_entry* %20, %struct.irq_entry** %5, align 8
  br label %10

21:                                               ; preds = %10
  %22 = call i32 (...) @garbage_collect_irq_entries()
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @irq_lock, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @do_free_by_irq_and_dev(%struct.irq_entry*, i32, i8*, i32) #1

declare dso_local i32 @garbage_collect_irq_entries(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
