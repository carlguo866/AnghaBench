; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_file.c_ocxl_file_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_file.c_ocxl_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@minors_idr_lock = common dso_local global i32 0, align 4
@minors_idr = common dso_local global i32 0, align 4
@ocxl_dev = common dso_local global i32 0, align 4
@OCXL_NUM_MINORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ocxl\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate ocxl major number: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ocxl_class = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to create ocxl class\0A\00", align 1
@ocxl_devnode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_file_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @mutex_init(i32* @minors_idr_lock)
  %4 = call i32 @idr_init(i32* @minors_idr)
  %5 = load i32, i32* @OCXL_NUM_MINORS, align 4
  %6 = call i32 @alloc_chrdev_region(i32* @ocxl_dev, i32 0, i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %30

13:                                               ; preds = %0
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = call %struct.TYPE_5__* @class_create(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** @ocxl_class, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocxl_class, align 8
  %17 = call i64 @IS_ERR(%struct.TYPE_5__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @ocxl_dev, align 4
  %22 = load i32, i32* @OCXL_NUM_MINORS, align 4
  %23 = call i32 @unregister_chrdev_region(i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocxl_class, align 8
  %25 = call i32 @PTR_ERR(%struct.TYPE_5__* %24)
  store i32 %25, i32* %1, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @ocxl_devnode, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ocxl_class, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %26, %19, %9
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.TYPE_5__* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
