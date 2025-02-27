; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@vmlogrdr_cdev = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@vmlogrdr_fops = common dso_local global i32 0, align 4
@MAXMINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmlogrdr_register_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_register_cdev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call %struct.TYPE_4__* (...) @cdev_alloc()
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32* @vmlogrdr_fops, i32** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MAXMINOR, align 4
  %20 = call i32 @cdev_add(%struct.TYPE_4__* %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

24:                                               ; preds = %11
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @kobject_put(i32* %26)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @vmlogrdr_cdev, align 8
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %23, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_4__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_add(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
