; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_resource.c_isc_resource_getcurlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_resource.c_isc_resource_getcurlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_resource_getcurlimit(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @resource2rlim(i32 %9, i32* %6)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @ISC_R_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @getrlimit(i32 %15, %struct.rlimit* %7)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @INSIST(i32 %19)
  %21 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i64, i64* %8, align 8
  ret i64 %25
}

declare dso_local i64 @resource2rlim(i32, i32*) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
