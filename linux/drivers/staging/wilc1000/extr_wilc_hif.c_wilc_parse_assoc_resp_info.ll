; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_parse_assoc_resp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_parse_assoc_resp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_conn_info = type { i64, i32, i32 }
%struct.assoc_resp = type { i32 }

@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.wilc_conn_info*)* @wilc_parse_assoc_resp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_parse_assoc_resp_info(i32* %0, i64 %1, %struct.wilc_conn_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wilc_conn_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.assoc_resp*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wilc_conn_info* %2, %struct.wilc_conn_info** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.assoc_resp*
  store %struct.assoc_resp* %12, %struct.assoc_resp** %10, align 8
  %13 = load %struct.assoc_resp*, %struct.assoc_resp** %10, align 8
  %14 = getelementptr inbounds %struct.assoc_resp, %struct.assoc_resp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %7, align 8
  %18 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %7, align 8
  %20 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32* %26, i32** %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 4
  store i64 %28, i64* %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @kmemdup(i32* %29, i64 %30, i32 %31)
  %33 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %7, align 8
  %34 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %7, align 8
  %36 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %24
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %7, align 8
  %45 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kmemdup(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
