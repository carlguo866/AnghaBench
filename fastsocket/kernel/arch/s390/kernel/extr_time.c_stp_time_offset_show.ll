; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_stp_time_offset_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_stp_time_offset_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.sysdev_class = type { i32 }

@stp_online = common dso_local global i32 0, align 4
@stp_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysdev_class*, i8*)* @stp_time_offset_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stp_time_offset_show(%struct.sysdev_class* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysdev_class*, align 8
  %5 = alloca i8*, align 8
  store %struct.sysdev_class* %0, %struct.sysdev_class** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @stp_online, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stp_info, i32 0, i32 0), align 8
  %10 = and i32 %9, 2048
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @ENODATA, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stp_info, i32 0, i32 1), align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
