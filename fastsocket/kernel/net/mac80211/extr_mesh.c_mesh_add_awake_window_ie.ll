; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_awake_window_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh.c_mesh_add_awake_window_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@NL80211_MESH_POWER_ACTIVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_MESH_AWAKE_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sk_buff*)* @mesh_add_awake_window_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_add_awake_window_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %10, %struct.ieee80211_if_mesh** %6, align 8
  %11 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_MESH_POWER_ACTIVE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %48

27:                                               ; preds = %20, %15, %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_tailroom(%struct.sk_buff* %28)
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %48

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32* @skb_put(%struct.sk_buff* %35, i32 4)
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* @WLAN_EID_MESH_AWAKE_WINDOW, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  store i32 2, i32* %40, align 4
  %42 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @put_unaligned_le16(i32 %45, i32* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %34, %31, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
