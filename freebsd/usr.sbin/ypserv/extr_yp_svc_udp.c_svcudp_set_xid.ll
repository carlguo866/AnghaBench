; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_svc_udp.c_svcudp_set_xid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_svc_udp.c_svcudp_set_xid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_dg_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @svcudp_set_xid(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_dg_data*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %21

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.svc_dg_data* @su_data(i32* %12)
  store %struct.svc_dg_data* %13, %struct.svc_dg_data** %6, align 8
  %14 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %15 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.svc_dg_data*, %struct.svc_dg_data** %6, align 8
  %19 = getelementptr inbounds %struct.svc_dg_data, %struct.svc_dg_data* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

declare dso_local %struct.svc_dg_data* @su_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
