; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timerexpire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timerexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.kq_timer_cb_data* }
%struct.kq_timer_cb_data = type { i64, i32, i32 }

@EV_ONESHOT = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@C_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @filt_timerexpire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_timerexpire(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kq_timer_cb_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.knote*
  store %struct.knote* %6, %struct.knote** %3, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.knote*, %struct.knote** %3, align 8
  %12 = call i32 @KNOTE_ACTIVATE(%struct.knote* %11, i32 0)
  %13 = load %struct.knote*, %struct.knote** %3, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EV_ONESHOT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.knote*, %struct.knote** %3, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %23, align 8
  store %struct.kq_timer_cb_data* %24, %struct.kq_timer_cb_data** %4, align 8
  %25 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %4, align 8
  %26 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %50

30:                                               ; preds = %20
  %31 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %4, align 8
  %32 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %4, align 8
  %35 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %4, align 8
  %41 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %40, i32 0, i32 2
  %42 = load %struct.kq_timer_cb_data*, %struct.kq_timer_cb_data** %4, align 8
  %43 = getelementptr inbounds %struct.kq_timer_cb_data, %struct.kq_timer_cb_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.knote*, %struct.knote** %3, align 8
  %46 = load i32, i32* @cpuid, align 4
  %47 = call i32 @PCPU_GET(i32 %46)
  %48 = load i32, i32* @C_ABSOLUTE, align 4
  %49 = call i32 @callout_reset_sbt_on(i32* %41, i32 %44, i32 0, void (i8*)* @filt_timerexpire, %struct.knote* %45, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %30, %29, %19
  ret void
}

declare dso_local i32 @KNOTE_ACTIVATE(%struct.knote*, i32) #1

declare dso_local i32 @callout_reset_sbt_on(i32*, i32, i32, void (i8*)*, %struct.knote*, i32, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
