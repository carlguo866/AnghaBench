; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spu_run_fini.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spu_run_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)* }

@SPU_UTIL_IDLE_LOADED = common dso_local global i32 0, align 4
@SPU_SCHED_SPU_RUN = common dso_local global i32 0, align 4
@SWITCH_LOG_EXIT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32*, i32*)* @spu_run_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_run_fini(%struct.spu_context* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %9 = call i32 @spu_del_from_rq(%struct.spu_context* %8)
  %10 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %11 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %13, align 8
  %15 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %16 = call i32 %14(%struct.spu_context* %15)
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %19 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %21, align 8
  %23 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %24 = call i32 %22(%struct.spu_context* %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %27 = load i32, i32* @SPU_UTIL_IDLE_LOADED, align 4
  %28 = call i32 @spuctx_switch_state(%struct.spu_context* %26, i32 %27)
  %29 = load i32, i32* @SPU_SCHED_SPU_RUN, align 4
  %30 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %34 = load i32, i32* @SWITCH_LOG_EXIT, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spu_switch_log_notify(i32* null, %struct.spu_context* %33, i32 %34, i32 %36)
  %38 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %39 = call i32 @spu_release(%struct.spu_context* %38)
  %40 = load i32, i32* @current, align 4
  %41 = call i64 @signal_pending(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %3
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @spu_del_from_rq(%struct.spu_context*) #1

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spu_switch_log_notify(i32*, %struct.spu_context*, i32, i32) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
