; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_find_ifstplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_find_ifstplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifbpstpreq = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifbpstpreq* (i64, %struct.ifbpstpreq*, i32)* @bridge_port_find_ifstplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifbpstpreq* @bridge_port_find_ifstplist(i64 %0, %struct.ifbpstpreq* %1, i32 %2) #0 {
  %4 = alloca %struct.ifbpstpreq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifbpstpreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifbpstpreq*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.ifbpstpreq* %1, %struct.ifbpstpreq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ifbpstpreq, %struct.ifbpstpreq* %18, i64 %20
  store %struct.ifbpstpreq* %21, %struct.ifbpstpreq** %9, align 8
  %22 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %9, align 8
  %23 = getelementptr inbounds %struct.ifbpstpreq, %struct.ifbpstpreq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %9, align 8
  store %struct.ifbpstpreq* %28, %struct.ifbpstpreq** %4, align 8
  br label %34

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %10

33:                                               ; preds = %10
  store %struct.ifbpstpreq* null, %struct.ifbpstpreq** %4, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.ifbpstpreq*, %struct.ifbpstpreq** %4, align 8
  ret %struct.ifbpstpreq* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
