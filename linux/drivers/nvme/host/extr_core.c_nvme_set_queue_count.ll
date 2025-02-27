; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_set_queue_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_set_queue_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }

@NVME_FEAT_NUM_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not set queue count (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_set_queue_count(%struct.nvme_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 %15, 16
  %17 = or i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %19 = load i32, i32* @NVME_FEAT_NUM_QUEUES, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @nvme_set_features(%struct.nvme_ctrl* %18, i32 %19, i32 %20, i32* null, i32 0, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %5, align 8
  store i32 0, i32* %35, align 4
  br label %48

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 65535
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 16
  %41 = call i32 @min(i32 %38, i32 %40)
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %36, %29
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @nvme_set_features(%struct.nvme_ctrl*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
