; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_supported_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_supported_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i32, i32, i32 }
%struct.rs_rate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_lq_sta*, %struct.rs_rate*)* @rs_get_supported_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %0, %struct.rs_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_lq_sta*, align 8
  %5 = alloca %struct.rs_rate*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %4, align 8
  store %struct.rs_rate* %1, %struct.rs_rate** %5, align 8
  %6 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %7 = call i64 @is_legacy(%struct.rs_rate* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %15 = call i64 @is_siso(%struct.rs_rate* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %23 = call i64 @is_mimo2(%struct.rs_rate* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %25, %17, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @is_legacy(%struct.rs_rate*) #1

declare dso_local i64 @is_siso(%struct.rs_rate*) #1

declare dso_local i64 @is_mimo2(%struct.rs_rate*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
