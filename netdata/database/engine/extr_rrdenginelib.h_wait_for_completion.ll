; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdenginelib.h_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdenginelib.h_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.completion*)* @wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_completion(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  store %struct.completion* %0, %struct.completion** %2, align 8
  %3 = load %struct.completion*, %struct.completion** %2, align 8
  %4 = getelementptr inbounds %struct.completion, %struct.completion* %3, i32 0, i32 1
  %5 = call i32 @uv_mutex_lock(i32* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.completion*, %struct.completion** %2, align 8
  %8 = getelementptr inbounds %struct.completion, %struct.completion* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 0, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.completion*, %struct.completion** %2, align 8
  %13 = getelementptr inbounds %struct.completion, %struct.completion* %12, i32 0, i32 2
  %14 = load %struct.completion*, %struct.completion** %2, align 8
  %15 = getelementptr inbounds %struct.completion, %struct.completion* %14, i32 0, i32 1
  %16 = call i32 @uv_cond_wait(i32* %13, i32* %15)
  br label %6

17:                                               ; preds = %6
  %18 = load %struct.completion*, %struct.completion** %2, align 8
  %19 = getelementptr inbounds %struct.completion, %struct.completion* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 1, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.completion*, %struct.completion** %2, align 8
  %25 = getelementptr inbounds %struct.completion, %struct.completion* %24, i32 0, i32 1
  %26 = call i32 @uv_mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @uv_mutex_lock(i32*) #1

declare dso_local i32 @uv_cond_wait(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
