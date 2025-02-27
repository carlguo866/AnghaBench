; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/netdump/extr_netdump_client.c_netdump_flush_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/netdump/extr_netdump_client.c_netdump_flush_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.debugnet_proto_aux = type { i32 }

@nd_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DEBUGNET_DATA = common dso_local global i32 0, align 4
@nd_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @netdump_flush_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdump_flush_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.debugnet_proto_aux, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nd_conf, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.debugnet_proto_aux, %struct.debugnet_proto_aux* %2, i32 0, i32 0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nd_conf, i32 0, i32 2), align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nd_conf, i32 0, i32 1), align 8
  %9 = load i32, i32* @DEBUGNET_DATA, align 4
  %10 = load i32, i32* @nd_buf, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nd_conf, i32 0, i32 0), align 8
  %12 = call i32 @debugnet_send(i32 %8, i32 %9, i32 %10, i64 %11, %struct.debugnet_proto_aux* %2)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nd_conf, i32 0, i32 0), align 8
  br label %16

16:                                               ; preds = %15, %5
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @debugnet_send(i32, i32, i32, i64, %struct.debugnet_proto_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
