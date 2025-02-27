; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_irq_work.c_irq_work_claim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_irq_work.c_irq_work_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_work = type { %struct.irq_work* }

@IRQ_WORK_PENDING = common dso_local global i64 0, align 8
@IRQ_WORK_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_work*)* @irq_work_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_work_claim(%struct.irq_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_work*, align 8
  %4 = alloca %struct.irq_work*, align 8
  %5 = alloca %struct.irq_work*, align 8
  store %struct.irq_work* %0, %struct.irq_work** %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.irq_work*, %struct.irq_work** %3, align 8
  %8 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %7, i32 0, i32 0
  %9 = load %struct.irq_work*, %struct.irq_work** %8, align 8
  store %struct.irq_work* %9, %struct.irq_work** %4, align 8
  %10 = load %struct.irq_work*, %struct.irq_work** %4, align 8
  %11 = ptrtoint %struct.irq_work* %10 to i64
  %12 = load i64, i64* @IRQ_WORK_PENDING, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %29

16:                                               ; preds = %6
  %17 = load %struct.irq_work*, %struct.irq_work** %4, align 8
  %18 = load i32, i32* @IRQ_WORK_FLAGS, align 4
  %19 = call %struct.irq_work* @next_flags(%struct.irq_work* %17, i32 %18)
  store %struct.irq_work* %19, %struct.irq_work** %5, align 8
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.irq_work*, %struct.irq_work** %3, align 8
  %22 = getelementptr inbounds %struct.irq_work, %struct.irq_work* %21, i32 0, i32 0
  %23 = load %struct.irq_work*, %struct.irq_work** %4, align 8
  %24 = load %struct.irq_work*, %struct.irq_work** %5, align 8
  %25 = call %struct.irq_work* @cmpxchg(%struct.irq_work** %22, %struct.irq_work* %23, %struct.irq_work* %24)
  %26 = load %struct.irq_work*, %struct.irq_work** %4, align 8
  %27 = icmp ne %struct.irq_work* %25, %26
  br i1 %27, label %6, label %28

28:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.irq_work* @next_flags(%struct.irq_work*, i32) #1

declare dso_local %struct.irq_work* @cmpxchg(%struct.irq_work**, %struct.irq_work*, %struct.irq_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
