; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_get_radio_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_get_radio_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hostapd_data*)* @hostapd_drv_get_radio_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hostapd_drv_get_radio_name(%struct.hostapd_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %4 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %5 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8* (i32*)*, i8* (i32*)** %17, align 8
  %19 = icmp eq i8* (i32*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %8, %1
  store i8* null, i8** %2, align 8
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8* (i32*)*, i8* (i32*)** %25, align 8
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* %26(i32* %29)
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %21, %20
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
