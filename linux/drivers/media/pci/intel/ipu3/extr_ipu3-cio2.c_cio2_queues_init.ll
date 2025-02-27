; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_queues_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_queues_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { i32* }

@CIO2_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cio2_device*)* @cio2_queues_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_queues_init(%struct.cio2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cio2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cio2_device* %0, %struct.cio2_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CIO2_QUEUES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %12 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %13 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @cio2_queue_init(%struct.cio2_device* %11, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %26

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

26:                                               ; preds = %21, %6
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CIO2_QUEUES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %51

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %46, %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %39 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %40 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @cio2_queue_exit(%struct.cio2_device* %38, i32* %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %30
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @cio2_queue_init(%struct.cio2_device*, i32*) #1

declare dso_local i32 @cio2_queue_exit(%struct.cio2_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
