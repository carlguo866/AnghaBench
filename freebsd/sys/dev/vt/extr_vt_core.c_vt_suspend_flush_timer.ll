; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_suspend_flush_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_suspend_flush_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@VDF_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_device*)* @vt_suspend_flush_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_suspend_flush_timer(%struct.vt_device* %0) #0 {
  %2 = alloca %struct.vt_device*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %2, align 8
  %3 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @VT_LOCK_ASSERT(%struct.vt_device* %3, i32 %4)
  %6 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %7 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VDF_ASYNC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %14 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %13, i32 0, i32 2
  %15 = call i32 @atomic_cmpset_int(i32* %14, i32 1, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %22

18:                                               ; preds = %12
  %19 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %20 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %19, i32 0, i32 1
  %21 = call i32 @callout_stop(i32* %20)
  br label %22

22:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @VT_LOCK_ASSERT(%struct.vt_device*, i32) #1

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
