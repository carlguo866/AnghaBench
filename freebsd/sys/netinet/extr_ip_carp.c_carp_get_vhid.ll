; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_get_vhid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_get_vhid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifaddr*)* @carp_get_vhid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carp_get_vhid(%struct.ifaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifaddr*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %3, align 8
  %4 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %5 = icmp eq %struct.ifaddr* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %8 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %18

12:                                               ; preds = %6
  %13 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %14 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
