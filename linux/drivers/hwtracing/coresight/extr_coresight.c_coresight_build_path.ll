; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_build_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_build_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.coresight_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_head* @coresight_build_path(%struct.coresight_device* %0, %struct.coresight_device* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store %struct.coresight_device* %1, %struct.coresight_device** %5, align 8
  %8 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %9 = icmp ne %struct.coresight_device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.list_head* @ERR_PTR(i32 %12)
  store %struct.list_head* %13, %struct.list_head** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.list_head* @kzalloc(i32 4, i32 %15)
  store %struct.list_head* %16, %struct.list_head** %6, align 8
  %17 = load %struct.list_head*, %struct.list_head** %6, align 8
  %18 = icmp ne %struct.list_head* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.list_head* @ERR_PTR(i32 %21)
  store %struct.list_head* %22, %struct.list_head** %3, align 8
  br label %39

23:                                               ; preds = %14
  %24 = load %struct.list_head*, %struct.list_head** %6, align 8
  %25 = call i32 @INIT_LIST_HEAD(%struct.list_head* %24)
  %26 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %27 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %28 = load %struct.list_head*, %struct.list_head** %6, align 8
  %29 = call i32 @_coresight_build_path(%struct.coresight_device* %26, %struct.coresight_device* %27, %struct.list_head* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.list_head*, %struct.list_head** %6, align 8
  %34 = call i32 @kfree(%struct.list_head* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.list_head* @ERR_PTR(i32 %35)
  store %struct.list_head* %36, %struct.list_head** %3, align 8
  br label %39

37:                                               ; preds = %23
  %38 = load %struct.list_head*, %struct.list_head** %6, align 8
  store %struct.list_head* %38, %struct.list_head** %3, align 8
  br label %39

39:                                               ; preds = %37, %32, %19, %10
  %40 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %40
}

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local %struct.list_head* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @_coresight_build_path(%struct.coresight_device*, %struct.coresight_device*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
