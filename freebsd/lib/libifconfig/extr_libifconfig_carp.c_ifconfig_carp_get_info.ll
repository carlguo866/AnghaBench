; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_carp.c_ifconfig_carp_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_carp.c_ifconfig_carp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carpreq = type { i32 }
%struct.ifreq = type { i64, i32 }

@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCGVH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_carp_get_info(i32* %0, i8* %1, %struct.carpreq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.carpreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifreq, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.carpreq* %2, %struct.carpreq** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.carpreq*, %struct.carpreq** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @bzero(%struct.carpreq* %11, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.carpreq*, %struct.carpreq** %8, align 8
  %19 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %18, i64 0
  %20 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlcpy(i32 %22, i8* %23, i32 4)
  %25 = load %struct.carpreq*, %struct.carpreq** %8, align 8
  %26 = ptrtoint %struct.carpreq* %25 to i64
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @AF_LOCAL, align 4
  %30 = load i32, i32* @SIOCGVH, align 4
  %31 = call i64 @ifconfig_ioctlwrap(i32* %28, i32 %29, i32 %30, %struct.ifreq* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @bzero(%struct.carpreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ifconfig_ioctlwrap(i32*, i32, i32, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
