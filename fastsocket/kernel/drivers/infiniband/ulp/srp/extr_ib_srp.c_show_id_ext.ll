; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_show_id_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_show_id_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.srp_target_port = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_id_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_id_ext(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.srp_target_port*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @class_to_shost(%struct.device* %8)
  %10 = call %struct.srp_target_port* @host_to_target(i32 %9)
  store %struct.srp_target_port* %10, %struct.srp_target_port** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %13 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @be64_to_cpu(i32 %14)
  %16 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %15)
  ret i32 %16
}

declare dso_local %struct.srp_target_port* @host_to_target(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
