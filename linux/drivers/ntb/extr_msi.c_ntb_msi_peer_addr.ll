; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_peer_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_peer_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.ntb_msi_desc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_msi_peer_addr(%struct.ntb_dev* %0, i32 %1, %struct.ntb_msi_desc* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_msi_desc*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ntb_msi_desc* %2, %struct.ntb_msi_desc** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.ntb_dev*, %struct.ntb_dev** %6, align 8
  %14 = call i32 @ntb_peer_mw_count(%struct.ntb_dev* %13)
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @ntb_peer_mw_get_addr(%struct.ntb_dev* %18, i32 %19, i64* %11, i32* null)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %4
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %8, align 8
  %31 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %25
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ntb_peer_mw_count(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_peer_mw_get_addr(%struct.ntb_dev*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
