; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_plcp_get_bitrate_idx_ofdm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_plcp_get_bitrate_idx_ofdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_plcp_hdr6 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_plcp_hdr6*, i32)* @b43legacy_plcp_get_bitrate_idx_ofdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_plcp_get_bitrate_idx_ofdm(%struct.b43legacy_plcp_hdr6* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43legacy_plcp_hdr6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_plcp_hdr6* %0, %struct.b43legacy_plcp_hdr6** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.b43legacy_plcp_hdr6*, %struct.b43legacy_plcp_hdr6** %4, align 8
  %12 = getelementptr inbounds %struct.b43legacy_plcp_hdr6, %struct.b43legacy_plcp_hdr6* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  switch i32 %16, label %41 [
    i32 11, label %17
    i32 15, label %20
    i32 10, label %23
    i32 14, label %26
    i32 9, label %29
    i32 13, label %32
    i32 8, label %35
    i32 12, label %38
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 0
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 3
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 5
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 6
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 7
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %2
  %42 = call i32 @B43legacy_BUG_ON(i32 1)
  store i32 -1, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
