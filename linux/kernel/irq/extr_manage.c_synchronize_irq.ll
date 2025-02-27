; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_synchronize_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_synchronize_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronize_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.irq_desc* @irq_to_desc(i32 %4)
  store %struct.irq_desc* %5, %struct.irq_desc** %3, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %7 = icmp ne %struct.irq_desc* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = call i32 @__synchronize_hardirq(%struct.irq_desc* %9, i32 1)
  %11 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event(i32 %13, i32 %19)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @__synchronize_hardirq(%struct.irq_desc*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
