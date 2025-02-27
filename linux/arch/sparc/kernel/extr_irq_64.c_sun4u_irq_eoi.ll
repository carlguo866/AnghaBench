; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sun4u_irq_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sun4u_irq_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_handler_data = type { i32 }

@ICLR_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sun4u_irq_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4u_irq_eoi(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_handler_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.irq_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data* %4)
  store %struct.irq_handler_data* %5, %struct.irq_handler_data** %3, align 8
  %6 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %7 = call i64 @likely(%struct.irq_handler_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @ICLR_IDLE, align 4
  %11 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %12 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @upa_writeq(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.irq_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i64 @likely(%struct.irq_handler_data*) #1

declare dso_local i32 @upa_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
