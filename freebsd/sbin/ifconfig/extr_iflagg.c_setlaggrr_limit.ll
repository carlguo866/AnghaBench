; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggrr_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggrr_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.lagg_reqopts = type { i32, i32 }

@name = common dso_local global i32 0, align 4
@SIOCSLAGGOPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"SIOCSLAGG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setlaggrr_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setlaggrr_limit(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
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
  %11 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @name, align 4
  %14 = call i32 @strlcpy(i32 %12, i32 %13, i32 4)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strtol(i8* %15, i32* null, i32 10)
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SIOCSLAGGOPTS, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.lagg_reqopts* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @bzero(%struct.lagg_reqopts*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.lagg_reqopts*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
