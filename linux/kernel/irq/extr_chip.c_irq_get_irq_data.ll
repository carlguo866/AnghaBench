; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_get_irq_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_get_irq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_desc = type { %struct.irq_data }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_data* @irq_get_irq_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.irq_desc* @irq_to_desc(i32 %4)
  store %struct.irq_desc* %5, %struct.irq_desc** %3, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %7 = icmp ne %struct.irq_desc* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 0
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi %struct.irq_data* [ %10, %8 ], [ null, %11 ]
  ret %struct.irq_data* %13
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
