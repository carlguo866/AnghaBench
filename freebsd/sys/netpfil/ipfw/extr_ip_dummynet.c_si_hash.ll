; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_si_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_si_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32 }
%struct.dn_sch_inst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ipfw_flow_id }

@DNHT_KEY_IS_OBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*)* @si_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_hash(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipfw_flow_id*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DNHT_KEY_IS_OBJ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.dn_sch_inst*
  %15 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  br label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %4, align 8
  %19 = inttoptr i64 %18 to %struct.ipfw_flow_id*
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi %struct.ipfw_flow_id* [ %16, %12 ], [ %19, %17 ]
  store %struct.ipfw_flow_id* %21, %struct.ipfw_flow_id** %7, align 8
  %22 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %7, align 8
  %23 = call i32 @flow_id_hash(%struct.ipfw_flow_id* %22)
  ret i32 %23
}

declare dso_local i32 @flow_id_hash(%struct.ipfw_flow_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
