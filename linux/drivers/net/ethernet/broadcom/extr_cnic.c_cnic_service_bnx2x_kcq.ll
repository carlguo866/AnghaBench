; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_service_bnx2x_kcq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_service_bnx2x_kcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.kcq_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kcq_info*)* @cnic_service_bnx2x_kcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_service_bnx2x_kcq(%struct.cnic_dev* %0, %struct.kcq_info* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kcq_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kcq_info* %1, %struct.kcq_info** %4, align 8
  %7 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %8 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @rmb()
  br label %12

12:                                               ; preds = %17, %2
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %15 = call i32 @cnic_get_kcqes(%struct.cnic_dev* %13, %struct.kcq_info* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @service_kcqes(%struct.cnic_dev* %18, i32 %19)
  %21 = call i32 (...) @barrier()
  %22 = load %struct.kcq_info*, %struct.kcq_info** %4, align 8
  %23 = getelementptr inbounds %struct.kcq_info, %struct.kcq_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = call i32 (...) @rmb()
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @cnic_get_kcqes(%struct.cnic_dev*, %struct.kcq_info*) #1

declare dso_local i32 @service_kcqes(%struct.cnic_dev*, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
