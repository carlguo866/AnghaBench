; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_aes_sc_to_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_aes_sc_to_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_sc = type { i32 }
%struct.ieee80211_key_seq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aes_sc*, %struct.ieee80211_key_seq*)* @iwl_mvm_aes_sc_to_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_aes_sc_to_seq(%struct.aes_sc* %0, %struct.ieee80211_key_seq* %1) #0 {
  %3 = alloca %struct.aes_sc*, align 8
  %4 = alloca %struct.ieee80211_key_seq*, align 8
  %5 = alloca i32, align 4
  store %struct.aes_sc* %0, %struct.aes_sc** %3, align 8
  store %struct.ieee80211_key_seq* %1, %struct.ieee80211_key_seq** %4, align 8
  %6 = load %struct.aes_sc*, %struct.aes_sc** %3, align 8
  %7 = getelementptr inbounds %struct.aes_sc, %struct.aes_sc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le64_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 40
  %12 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %11, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 32
  %19 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 24
  %26 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 16
  %33 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %32, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 8
  %40 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 %45, i32* %50, align 4
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
