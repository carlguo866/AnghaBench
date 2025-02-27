; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_fsms.c_ctcm_chx_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: %s[%d] of %s\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@CTC_STATE_STARTWAIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"HaltIO in ctcm_chx_restart\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ctcm_chx_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_chx_restart(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.channel*
  store %struct.channel* %13, %struct.channel** %7, align 8
  %14 = load %struct.channel*, %struct.channel** %7, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load i32, i32* @TRACE, align 4
  %18 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %19 = load i32, i32* @CTCM_FUNTAIL, align 4
  %20 = load %struct.channel*, %struct.channel** %7, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CTCM_DBF_TEXT_(i32 %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.channel*, %struct.channel** %7, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 0
  %30 = call i32 @fsm_deltimer(i32* %29)
  %31 = load %struct.channel*, %struct.channel** %7, align 8
  %32 = getelementptr inbounds %struct.channel, %struct.channel* %31, i32 0, i32 0
  %33 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %34 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %35 = load %struct.channel*, %struct.channel** %7, align 8
  %36 = call i32 @fsm_addtimer(i32* %32, i32 %33, i32 %34, %struct.channel* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @fsm_getstate(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @CTC_STATE_STARTWAIT, align 4
  %41 = call i32 @fsm_newstate(i32* %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load %struct.channel*, %struct.channel** %7, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_ccwdev_lock(i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_lock_irqsave(i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %45, %3
  %53 = load %struct.channel*, %struct.channel** %7, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ccw_device_halt(i32 %55, i32 0)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.channel*, %struct.channel** %7, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @get_ccwdev_lock(i32 %63)
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %60, %52
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.channel*, %struct.channel** %7, align 8
  %77 = getelementptr inbounds %struct.channel, %struct.channel* %76, i32 0, i32 0
  %78 = call i32 @fsm_deltimer(i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @fsm_newstate(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.channel*, %struct.channel** %7, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ctcm_ccw_check_rc(%struct.channel* %83, i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %67
  ret void
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.channel*) #1

declare dso_local i32 @fsm_getstate(i32*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_halt(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ctcm_ccw_check_rc(%struct.channel*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
