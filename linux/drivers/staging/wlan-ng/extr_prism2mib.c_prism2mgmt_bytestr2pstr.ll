; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mgmt_bytestr2pstr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mgmt_bytestr2pstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x_bytestr = type { i32, i32 }
%struct.p80211pstrd = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prism2mgmt_bytestr2pstr(%struct.hfa384x_bytestr* %0, %struct.p80211pstrd* %1) #0 {
  %3 = alloca %struct.hfa384x_bytestr*, align 8
  %4 = alloca %struct.p80211pstrd*, align 8
  store %struct.hfa384x_bytestr* %0, %struct.hfa384x_bytestr** %3, align 8
  store %struct.p80211pstrd* %1, %struct.p80211pstrd** %4, align 8
  %5 = load %struct.hfa384x_bytestr*, %struct.hfa384x_bytestr** %3, align 8
  %6 = getelementptr inbounds %struct.hfa384x_bytestr, %struct.hfa384x_bytestr* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @le16_to_cpu(i32 %7)
  %9 = load %struct.p80211pstrd*, %struct.p80211pstrd** %4, align 8
  %10 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.p80211pstrd*, %struct.p80211pstrd** %4, align 8
  %12 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hfa384x_bytestr*, %struct.hfa384x_bytestr** %3, align 8
  %15 = getelementptr inbounds %struct.hfa384x_bytestr, %struct.hfa384x_bytestr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.p80211pstrd*, %struct.p80211pstrd** %4, align 8
  %18 = getelementptr inbounds %struct.p80211pstrd, %struct.p80211pstrd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @memcpy(i32 %13, i32 %16, i64 %19)
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
