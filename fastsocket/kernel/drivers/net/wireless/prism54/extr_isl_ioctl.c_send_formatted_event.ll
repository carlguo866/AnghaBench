; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_send_formatted_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_send_formatted_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.obj_mlme = type { i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }

@IW_CUSTOM_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IWEVCUSTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, %struct.obj_mlme*, i32)* @send_formatted_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_formatted_event(%struct.TYPE_6__* %0, i8* %1, %struct.obj_mlme* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obj_mlme*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.iwreq_data, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.obj_mlme* %2, %struct.obj_mlme** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @IW_CUSTOM_MAX, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i32 %11, i32 %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %39

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast %union.iwreq_data* %9 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = bitcast %union.iwreq_data* %9 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.obj_mlme*, %struct.obj_mlme** %7, align 8
  %27 = bitcast %union.iwreq_data* %9 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @format_event(%struct.TYPE_6__* %23, i8* %24, i8* %25, %struct.obj_mlme* %26, i64* %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IWEVCUSTOM, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @wireless_send_event(i32 %33, i32 %34, %union.iwreq_data* %9, i8* %35)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @kfree(i8* %37)
  br label %39

39:                                               ; preds = %17, %16
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @format_event(%struct.TYPE_6__*, i8*, i8*, %struct.obj_mlme*, i64*, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
