; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }
%struct.ca_msg = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i8*)* @fdtv_ca_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_info(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ca_msg*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ca_msg*
  store %struct.ca_msg* %7, %struct.ca_msg** %5, align 8
  %8 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %9 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %10 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %13 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %12, i32 0, i32 0
  %14 = call i64 @avc_ca_info(%struct.firedtv* %8, i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  ret i32 %21
}

declare dso_local i64 @avc_ca_info(%struct.firedtv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
