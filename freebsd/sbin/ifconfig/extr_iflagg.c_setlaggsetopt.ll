; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggsetopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggsetopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.lagg_reqopts = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid lagg option\00", align 1
@name = common dso_local global i32 0, align 4
@SIOCSLAGGOPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SIOCSLAGGOPTS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setlaggsetopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setlaggsetopt(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.lagg_reqopts, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = call i32 @bzero(%struct.lagg_reqopts* %9, i32 8)
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 129, label %15
    i32 -129, label %15
    i32 128, label %15
    i32 -128, label %15
    i32 132, label %15
    i32 -132, label %15
    i32 130, label %15
    i32 -130, label %15
    i32 133, label %15
    i32 -133, label %15
    i32 131, label %15
    i32 -131, label %15
  ]

15:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %18

16:                                               ; preds = %4
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %15
  %19 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @name, align 4
  %22 = call i32 @strlcpy(i32 %20, i32 %21, i32 4)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SIOCSLAGGOPTS, align 4
  %25 = call i64 @ioctl(i32 %23, i32 %24, %struct.lagg_reqopts* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @bzero(%struct.lagg_reqopts*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.lagg_reqopts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
