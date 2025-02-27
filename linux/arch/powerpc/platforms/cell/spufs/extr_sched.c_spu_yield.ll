; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_yield.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, i32 }

@spu_yield__enter = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@MAX_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_yield(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %3 = load i32, i32* @spu_yield__enter, align 4
  %4 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %5 = call i32 @spu_context_nospu_trace(i32 %3, %struct.spu_context* %4)
  %6 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %7 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %14 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %17 = load i32, i32* @MAX_PRIO, align 4
  %18 = call i32 @__spu_deactivate(%struct.spu_context* %16, i32 0, i32 %17)
  %19 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  br label %22

22:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @spu_context_nospu_trace(i32, %struct.spu_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__spu_deactivate(%struct.spu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
