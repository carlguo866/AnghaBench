; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_trans_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_suspend(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %5 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.iwl_trans*)**
  %9 = load i32 (%struct.iwl_trans*)*, i32 (%struct.iwl_trans*)** %8, align 8
  %10 = icmp ne i32 (%struct.iwl_trans*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.iwl_trans*)**
  %18 = load i32 (%struct.iwl_trans*)*, i32 (%struct.iwl_trans*)** %17, align 8
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %20 = call i32 %18(%struct.iwl_trans* %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
