; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_stop_error.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_stop_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Changing state to: %d\0A\00", align 1
@system_power_efficient_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_compr_stop_error(%struct.snd_compr_stream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %7 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %17 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @system_power_efficient_wq, align 4
  %23 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %24 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %23, i32 0, i32 0
  %25 = call i32 @queue_delayed_work(i32 %22, i32* %24, i32 0)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
