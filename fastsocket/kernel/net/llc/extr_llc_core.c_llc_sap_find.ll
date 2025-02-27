; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_core.c_llc_sap_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_core.c_llc_sap_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }

@llc_sap_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llc_sap* @llc_sap_find(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.llc_sap*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call i32 @read_lock_bh(i32* @llc_sap_list_lock)
  %5 = load i8, i8* %2, align 1
  %6 = call %struct.llc_sap* @__llc_sap_find(i8 zeroext %5)
  store %struct.llc_sap* %6, %struct.llc_sap** %3, align 8
  %7 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %8 = icmp ne %struct.llc_sap* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %11 = call i32 @llc_sap_hold(%struct.llc_sap* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @read_unlock_bh(i32* @llc_sap_list_lock)
  %14 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  ret %struct.llc_sap* %14
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.llc_sap* @__llc_sap_find(i8 zeroext) #1

declare dso_local i32 @llc_sap_hold(%struct.llc_sap*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
