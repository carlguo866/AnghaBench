; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_wrr.c_ip_vs_wrr_update_svc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_wrr.c_ip_vs_wrr_update_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32, %struct.ip_vs_wrr_mark* }
%struct.ip_vs_wrr_mark = type { i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*)* @ip_vs_wrr_update_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_wrr_update_svc(%struct.ip_vs_service* %0) #0 {
  %2 = alloca %struct.ip_vs_service*, align 8
  %3 = alloca %struct.ip_vs_wrr_mark*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %2, align 8
  %4 = load %struct.ip_vs_service*, %struct.ip_vs_service** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %4, i32 0, i32 1
  %6 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %5, align 8
  store %struct.ip_vs_wrr_mark* %6, %struct.ip_vs_wrr_mark** %3, align 8
  %7 = load %struct.ip_vs_service*, %struct.ip_vs_service** %2, align 8
  %8 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %7, i32 0, i32 0
  %9 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_wrr_mark, %struct.ip_vs_wrr_mark* %9, i32 0, i32 3
  store i32* %8, i32** %10, align 8
  %11 = load %struct.ip_vs_service*, %struct.ip_vs_service** %2, align 8
  %12 = call i64 @ip_vs_wrr_max_weight(%struct.ip_vs_service* %11)
  %13 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_wrr_mark, %struct.ip_vs_wrr_mark* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ip_vs_service*, %struct.ip_vs_service** %2, align 8
  %16 = call i32 @ip_vs_wrr_gcd_weight(%struct.ip_vs_service* %15)
  %17 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %3, align 8
  %18 = getelementptr inbounds %struct.ip_vs_wrr_mark, %struct.ip_vs_wrr_mark* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %3, align 8
  %20 = getelementptr inbounds %struct.ip_vs_wrr_mark, %struct.ip_vs_wrr_mark* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %3, align 8
  %23 = getelementptr inbounds %struct.ip_vs_wrr_mark, %struct.ip_vs_wrr_mark* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.ip_vs_wrr_mark*, %struct.ip_vs_wrr_mark** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_wrr_mark, %struct.ip_vs_wrr_mark* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local i64 @ip_vs_wrr_max_weight(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_wrr_gcd_weight(%struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
