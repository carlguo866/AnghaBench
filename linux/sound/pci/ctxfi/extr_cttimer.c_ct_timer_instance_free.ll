; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_timer_instance_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_timer_instance_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i32, %struct.ct_timer* }
%struct.ct_timer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_timer_instance_free(%struct.ct_timer_instance* %0) #0 {
  %2 = alloca %struct.ct_timer_instance*, align 8
  %3 = alloca %struct.ct_timer*, align 8
  store %struct.ct_timer_instance* %0, %struct.ct_timer_instance** %2, align 8
  %4 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %5 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %4, i32 0, i32 1
  %6 = load %struct.ct_timer*, %struct.ct_timer** %5, align 8
  store %struct.ct_timer* %6, %struct.ct_timer** %3, align 8
  %7 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %8 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %10, align 8
  %12 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %13 = call i32 %11(%struct.ct_timer_instance* %12)
  %14 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %15 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %17, align 8
  %19 = icmp ne i32 (%struct.ct_timer_instance*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %22 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %24, align 8
  %26 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %27 = call i32 %25(%struct.ct_timer_instance* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %30 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %33 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %36 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %39 = call i32 @kfree(%struct.ct_timer_instance* %38)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.ct_timer_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
