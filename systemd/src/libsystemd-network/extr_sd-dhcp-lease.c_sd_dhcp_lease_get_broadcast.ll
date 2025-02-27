; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-lease.c_sd_dhcp_lease_get_broadcast.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-lease.c_sd_dhcp_lease_get_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_dhcp_lease_get_broadcast(%struct.in_addr* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca %struct.in_addr*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %6 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = call i32 @assert_return(%struct.in_addr* %6, i32 %8)
  %10 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @assert_return(%struct.in_addr* %10, i32 %12)
  %14 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODATA, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @assert_return(%struct.in_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
