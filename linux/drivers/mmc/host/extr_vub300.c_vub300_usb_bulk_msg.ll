; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_usb_bulk_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_usb_bulk_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { %struct.TYPE_6__*, %struct.usb_device* }
%struct.TYPE_6__ = type { i32, i32, %struct.completion* }
%struct.completion = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vub300_usb_bulk_msg_completion = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vub300_mmc_host*, i32, i8*, i32, i32*, i32)* @vub300_usb_bulk_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vub300_usb_bulk_msg(%struct.vub300_mmc_host* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vub300_mmc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca %struct.completion, align 4
  %16 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %18 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %17, i32 0, i32 1
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_6__* @usb_alloc_urb(i32 0, i32 %20)
  %22 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %23 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %22, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %25 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %92

31:                                               ; preds = %6
  %32 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %33 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @vub300_usb_bulk_msg_completion, align 4
  %40 = call i32 @usb_fill_bulk_urb(%struct.TYPE_6__* %34, %struct.usb_device* %35, i32 %36, i8* %37, i32 %38, i32 %39, i32* null)
  %41 = call i32 @init_completion(%struct.completion* %15)
  %42 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %43 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store %struct.completion* %15, %struct.completion** %45, align 8
  %46 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %47 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %51 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @usb_submit_urb(%struct.TYPE_6__* %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %31
  br label %78

59:                                               ; preds = %31
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @msecs_to_jiffies(i32 %60)
  %62 = call i32 @wait_for_completion_timeout(%struct.completion* %15, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %16, align 4
  %67 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %68 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @usb_kill_urb(%struct.TYPE_6__* %69)
  br label %77

71:                                               ; preds = %59
  %72 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %73 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %80 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %12, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %86 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @usb_free_urb(%struct.TYPE_6__* %87)
  %89 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %8, align 8
  %90 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %89, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %90, align 8
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %78, %28
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_6__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_6__*, %struct.usb_device*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
