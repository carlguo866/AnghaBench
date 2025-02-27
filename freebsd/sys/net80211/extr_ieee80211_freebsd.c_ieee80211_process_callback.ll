; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_process_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_process_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }
%struct.ieee80211_cb = type { i32, i32 (%struct.ieee80211_node*, i32, i32)* }

@MTAG_ABI_NET80211 = common dso_local global i32 0, align 4
@NET80211_TAG_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_process_callback(%struct.ieee80211_node* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_tag*, align 8
  %8 = alloca %struct.ieee80211_cb*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = load i32, i32* @MTAG_ABI_NET80211, align 4
  %11 = load i32, i32* @NET80211_TAG_CALLBACK, align 4
  %12 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %9, i32 %10, i32 %11, i32* null)
  store %struct.m_tag* %12, %struct.m_tag** %7, align 8
  %13 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %14 = icmp ne %struct.m_tag* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.m_tag*, %struct.m_tag** %7, align 8
  %17 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %16, i64 1
  %18 = bitcast %struct.m_tag* %17 to %struct.ieee80211_cb*
  store %struct.ieee80211_cb* %18, %struct.ieee80211_cb** %8, align 8
  %19 = load %struct.ieee80211_cb*, %struct.ieee80211_cb** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_cb, %struct.ieee80211_cb* %19, i32 0, i32 1
  %21 = load i32 (%struct.ieee80211_node*, i32, i32)*, i32 (%struct.ieee80211_node*, i32, i32)** %20, align 8
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %23 = load %struct.ieee80211_cb*, %struct.ieee80211_cb** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_cb, %struct.ieee80211_cb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %21(%struct.ieee80211_node* %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
