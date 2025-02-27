; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_socket_safe_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_socket_safe_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }

@WNT_ACQUIRE = common dso_local global i32 0, align 4
@WNT_STOPUSING = common dso_local global i64 0, align 8
@WNT_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*)* @cfil_socket_safe_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_socket_safe_lock(%struct.inpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %5 = load i32, i32* @WNT_ACQUIRE, align 4
  %6 = call i64 @in_pcb_checkstate(%struct.inpcb* %4, i32 %5, i32 0)
  %7 = load i64, i64* @WNT_STOPUSING, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @socket_lock(i32 %12, i32 1)
  %14 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %15 = load i32, i32* @WNT_RELEASE, align 4
  %16 = call i64 @in_pcb_checkstate(%struct.inpcb* %14, i32 %15, i32 1)
  %17 = load i64, i64* @WNT_STOPUSING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %26

20:                                               ; preds = %9
  %21 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @socket_unlock(i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local i32 @socket_lock(i32, i32) #1

declare dso_local i32 @socket_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
