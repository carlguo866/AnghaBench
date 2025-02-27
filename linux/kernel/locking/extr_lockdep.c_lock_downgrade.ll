; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_lock_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_lock_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.lockdep_map = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_downgrade(%struct.lockdep_map* %0, i64 %1) #0 {
  %3 = alloca %struct.lockdep_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @raw_local_irq_save(i64 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @check_flags(i64 %17)
  %19 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @__lock_downgrade(%struct.lockdep_map* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %25 = call i32 @check_chain_key(%struct.TYPE_3__* %24)
  br label %26

26:                                               ; preds = %23, %12
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @raw_local_irq_restore(i64 %29)
  br label %31

31:                                               ; preds = %26, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @check_flags(i64) #1

declare dso_local i64 @__lock_downgrade(%struct.lockdep_map*, i64) #1

declare dso_local i32 @check_chain_key(%struct.TYPE_3__*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
