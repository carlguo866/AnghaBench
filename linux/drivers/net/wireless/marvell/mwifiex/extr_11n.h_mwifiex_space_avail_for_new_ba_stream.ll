; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_space_avail_for_new_ba_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_space_avail_for_new_ba_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i64, i32, %struct.mwifiex_private** }
%struct.mwifiex_private = type { i32 }

@MWIFIEX_MAX_TX_BASTREAM_SUPPORTED = common dso_local global i64 0, align 8
@MWIFIEX_FW_V15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mwifiex_adapter*)* @mwifiex_space_avail_for_new_ba_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mwifiex_space_avail_for_new_ba_stream(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* @MWIFIEX_MAX_TX_BASTREAM_SUPPORTED, align 8
  store i64 %7, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 3
  %17 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %17, i64 %18
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %19, align 8
  store %struct.mwifiex_private* %20, %struct.mwifiex_private** %3, align 8
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = icmp ne %struct.mwifiex_private* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = call i64 @mwifiex_wmm_list_len(i32* %25)
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MWIFIEX_FW_V15, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @GETSUPP_TXBASTREAMS(i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* @MWIFIEX_MAX_TX_BASTREAM_SUPPORTED, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %46, %39
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = sext i32 %54 to i64
  ret i64 %55
}

declare dso_local i64 @mwifiex_wmm_list_len(i32*) #1

declare dso_local i64 @GETSUPP_TXBASTREAMS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
