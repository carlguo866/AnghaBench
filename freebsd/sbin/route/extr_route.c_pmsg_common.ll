; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_pmsg_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_pmsg_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"\0Alocks: \00", align 1
@metricnames = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" inits: \00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_msghdr*, i64)* @pmsg_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmsg_common(%struct.rt_msghdr* %0, i64 %1) #0 {
  %3 = alloca %struct.rt_msghdr*, align 8
  %4 = alloca i64, align 8
  store %struct.rt_msghdr* %0, %struct.rt_msghdr** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %7 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @metricnames, align 4
  %11 = call i32 @printb(i32 %9, i32 %10)
  %12 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %14 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @metricnames, align 4
  %17 = call i32 @printb(i32 %15, i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = icmp ugt i64 %18, 12
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %22 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %21, i64 1
  %23 = bitcast %struct.rt_msghdr* %22 to i8*
  %24 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %25 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %27, 12
  %29 = call i32 @pmsg_addrs(i8* %23, i32 %26, i64 %28)
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fflush(i32 %31)
  br label %33

33:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @printb(i32, i32) #1

declare dso_local i32 @pmsg_addrs(i8*, i32, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
