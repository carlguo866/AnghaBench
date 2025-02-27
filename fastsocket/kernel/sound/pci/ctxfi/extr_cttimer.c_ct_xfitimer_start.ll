; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_xfitimer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_xfitimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i32, i32, i64, %struct.ct_timer* }
%struct.ct_timer = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_timer_instance*)* @ct_xfitimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_xfitimer_start(%struct.ct_timer_instance* %0) #0 {
  %2 = alloca %struct.ct_timer_instance*, align 8
  %3 = alloca %struct.ct_timer*, align 8
  %4 = alloca i64, align 8
  store %struct.ct_timer_instance* %0, %struct.ct_timer_instance** %2, align 8
  %5 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %6 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %5, i32 0, i32 3
  %7 = load %struct.ct_timer*, %struct.ct_timer** %6, align 8
  store %struct.ct_timer* %7, %struct.ct_timer** %3, align 8
  %8 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %9 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %13 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %12, i32 0, i32 1
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %18 = call i32 @ct_xfitimer_get_wc(%struct.ct_timer* %17)
  %19 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %20 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %23 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %25 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %27 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %26, i32 0, i32 1
  %28 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %29 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %28, i32 0, i32 1
  %30 = call i32 @list_add(i32* %27, i32* %29)
  %31 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %32 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.ct_timer*, %struct.ct_timer** %3, align 8
  %36 = call i32 @ct_xfitimer_update(%struct.ct_timer* %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @ct_xfitimer_get_wc(%struct.ct_timer*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ct_xfitimer_update(%struct.ct_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
