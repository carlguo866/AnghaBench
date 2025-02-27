; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_down_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c___pblk_down_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun* }
%struct.pblk_lun = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"taking lun semaphore timed out: err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, i32)* @__pblk_down_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pblk_down_chunk(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk_lun*, align 8
  %6 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pblk*, %struct.pblk** %3, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 0
  %9 = load %struct.pblk_lun*, %struct.pblk_lun** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %9, i64 %11
  store %struct.pblk_lun* %12, %struct.pblk_lun** %5, align 8
  %13 = load %struct.pblk_lun*, %struct.pblk_lun** %5, align 8
  %14 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %13, i32 0, i32 0
  %15 = call i32 @msecs_to_jiffies(i32 30000)
  %16 = call i32 @down_timeout(i32* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ETIME, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %2
  %27 = load %struct.pblk*, %struct.pblk** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @pblk_err(%struct.pblk* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @down_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
