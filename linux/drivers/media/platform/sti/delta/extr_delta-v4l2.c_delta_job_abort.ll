; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_job_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_job_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s aborting job\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @delta_job_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_job_abort(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_dev*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.delta_ctx*
  store %struct.delta_ctx* %6, %struct.delta_ctx** %3, align 8
  %7 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %7, i32 0, i32 2
  %9 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  store %struct.delta_dev* %9, %struct.delta_dev** %4, align 8
  %10 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %11 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
