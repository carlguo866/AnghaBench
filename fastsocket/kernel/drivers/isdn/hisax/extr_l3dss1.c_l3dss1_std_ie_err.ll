; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_std_ie_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_std_ie_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@L3_DEB_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"check_infoelements ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32)* @l3dss1_std_ie_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_std_ie_err(%struct.l3_process* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_process*, align 8
  %4 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %6 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @L3_DEB_CHECK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %13 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @l3_debug(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %39 [
    i32 0, label %19
    i32 131, label %20
    i32 128, label %26
    i32 130, label %32
    i32 129, label %38
  ]

19:                                               ; preds = %17
  br label %40

20:                                               ; preds = %17
  %21 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %22 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 96, i32* %23, align 4
  %24 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %25 = call i32 @l3dss1_status_send(%struct.l3_process* %24, i32 0, i32* null)
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 99, i32* %29, align 4
  %30 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %31 = call i32 @l3dss1_status_send(%struct.l3_process* %30, i32 0, i32* null)
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %34 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 100, i32* %35, align 4
  %36 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %37 = call i32 @l3dss1_status_send(%struct.l3_process* %36, i32 0, i32* null)
  br label %40

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %17, %38
  br label %40

40:                                               ; preds = %39, %32, %26, %20, %19
  ret void
}

declare dso_local i32 @l3_debug(i32, i8*, i32) #1

declare dso_local i32 @l3dss1_status_send(%struct.l3_process*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
