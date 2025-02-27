; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_drv_callbacks.c_hostapd_probe_req_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_drv_callbacks.c_hostapd_probe_req_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32*, i32*, i32*, i32*, i64, i32)*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_probe_req_rx(%struct.hostapd_data* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32*, i32** %13, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %7
  store i32 -1, i32* %8, align 4
  br label %71

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @random_add_randomness(i32* %25, i32 %26)
  store i64 0, i64* %16, align 8
  br label %28

28:                                               ; preds = %66, %24
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %16, align 8
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br label %39

39:                                               ; preds = %33, %28
  %40 = phi i1 [ false, %28 ], [ %38, %33 ]
  br i1 %40, label %41, label %69

41:                                               ; preds = %39
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64 (i32, i32*, i32*, i32*, i32*, i64, i32)*, i64 (i32, i32*, i32*, i32*, i32*, i64, i32)** %47, align 8
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i64 %48(i32 %55, i32* %56, i32* %57, i32* %58, i32* %59, i64 %60, i32 %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %41
  store i32 1, i32* %17, align 4
  br label %69

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %16, align 8
  br label %28

69:                                               ; preds = %64, %39
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %23
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @random_add_randomness(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
