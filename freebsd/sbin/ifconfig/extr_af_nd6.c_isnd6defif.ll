; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_nd6.c_isnd6defif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_nd6.c_isnd6defif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.in6_ndifreq = type { i32, i32 }

@ifr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SIOCGDEFIFACE_IN6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ioctl(SIOCGDEFIFACE_IN6)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isnd6defif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnd6defif(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_ndifreq, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @memset(%struct.in6_ndifreq* %4, i32 0, i32 8)
  %8 = getelementptr inbounds %struct.in6_ndifreq, %struct.in6_ndifreq* %4, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 4
  %11 = call i32 @strlcpy(i32 %9, i32 %10, i32 4)
  %12 = getelementptr inbounds %struct.in6_ndifreq, %struct.in6_ndifreq* %4, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @if_nametoindex(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SIOCGDEFIFACE_IN6, align 4
  %17 = ptrtoint %struct.in6_ndifreq* %4 to i32
  %18 = call i32 @ioctl(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.in6_ndifreq, %struct.in6_ndifreq* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @memset(%struct.in6_ndifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_nametoindex(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
