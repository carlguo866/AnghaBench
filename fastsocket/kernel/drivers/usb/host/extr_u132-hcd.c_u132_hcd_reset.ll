; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device is being removed\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @u132_hcd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_hcd_reset(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.u132*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %6)
  store %struct.u132* %7, %struct.u132** %4, align 8
  %8 = load %struct.u132*, %struct.u132** %4, align 8
  %9 = getelementptr inbounds %struct.u132, %struct.u132* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.u132*, %struct.u132** %4, align 8
  %14 = getelementptr inbounds %struct.u132, %struct.u132* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.u132*, %struct.u132** %4, align 8
  %18 = getelementptr inbounds %struct.u132, %struct.u132* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.u132*, %struct.u132** %4, align 8
  %25 = getelementptr inbounds %struct.u132, %struct.u132* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.u132*, %struct.u132** %4, align 8
  %30 = getelementptr inbounds %struct.u132, %struct.u132* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ESHUTDOWN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %54

36:                                               ; preds = %23
  %37 = load %struct.u132*, %struct.u132** %4, align 8
  %38 = getelementptr inbounds %struct.u132, %struct.u132* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.u132*, %struct.u132** %4, align 8
  %41 = call i32 @u132_init(%struct.u132* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.u132*, %struct.u132** %4, align 8
  %46 = call i32 @u132_disable(%struct.u132* %45)
  %47 = load %struct.u132*, %struct.u132** %4, align 8
  %48 = getelementptr inbounds %struct.u132, %struct.u132* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.u132*, %struct.u132** %4, align 8
  %51 = getelementptr inbounds %struct.u132, %struct.u132* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %28, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @u132_init(%struct.u132*) #1

declare dso_local i32 @u132_disable(%struct.u132*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
