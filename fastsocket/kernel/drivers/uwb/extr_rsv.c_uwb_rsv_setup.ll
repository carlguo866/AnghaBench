; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s_rsvd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rsv_setup(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca [16 x i8], align 16
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i8* @dev_name(i32* %8)
  %10 = call i32 @snprintf(i8* %5, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %12 = call i32* @create_singlethread_workqueue(i8* %11)
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %14 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
