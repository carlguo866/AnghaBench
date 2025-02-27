; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.rlimit = type { i64, i64 }

@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot disable core dumps: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot lock memory: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*)* @eli_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eli_protect(%struct.gctl_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.rlimit, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  %5 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @RLIMIT_CORE, align 4
  %8 = call i32 @setrlimit(i32 %7, %struct.rlimit* %4)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @gctl_error(%struct.gctl_req* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @MCL_FUTURE, align 4
  %17 = call i32 @mlockall(i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @gctl_error(%struct.gctl_req* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %19, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @mlockall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
