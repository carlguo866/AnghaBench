; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_clockinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_clockinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"S_clockinfo %zu != %zu\00", align 1
@hflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"{ hz = %'d, tick = %'d, profhz = %'d, stathz = %'d }\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"{ hz = %d, tick = %d, profhz = %d, stathz = %d }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @S_clockinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @S_clockinfo(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clockinfo*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.clockinfo*
  store %struct.clockinfo* %8, %struct.clockinfo** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 16
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %12, i32 16)
  store i32 1, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load i64, i64* @hflag, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.clockinfo*, %struct.clockinfo** %6, align 8
  %20 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clockinfo*, %struct.clockinfo** %6, align 8
  %23 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.clockinfo*, %struct.clockinfo** %6, align 8
  %26 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clockinfo*, %struct.clockinfo** %6, align 8
  %29 = getelementptr inbounds %struct.clockinfo, %struct.clockinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @printf(i8* %18, i32 %21, i32 %24, i32 %27, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %14, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @warnx(i8*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
