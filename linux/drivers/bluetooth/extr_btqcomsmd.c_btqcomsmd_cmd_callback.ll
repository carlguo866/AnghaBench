; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqcomsmd.c_btqcomsmd_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqcomsmd.c_btqcomsmd_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.btqcomsmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HCI_EVENT_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @btqcomsmd_cmd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btqcomsmd_cmd_callback(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.rpmsg_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btqcomsmd*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.btqcomsmd*
  store %struct.btqcomsmd* %13, %struct.btqcomsmd** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.btqcomsmd*, %struct.btqcomsmd** %11, align 8
  %16 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %14
  store i32 %21, i32* %19, align 4
  %22 = load %struct.btqcomsmd*, %struct.btqcomsmd** %11, align 8
  %23 = getelementptr inbounds %struct.btqcomsmd, %struct.btqcomsmd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* @HCI_EVENT_PKT, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @btqcomsmd_recv(%struct.TYPE_4__* %24, i32 %25, i8* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @btqcomsmd_recv(%struct.TYPE_4__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
