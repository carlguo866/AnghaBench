; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_ascb_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_ascb_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"scb:0x%x timed out\0A\00", align 1
@ascb = common dso_local global %struct.asd_ascb* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_ascb_timedout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.asd_seq_data*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %7 = ptrtoint %struct.asd_ascb* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.asd_ascb* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.asd_ascb* %10, %struct.asd_ascb** %3, align 8
  %11 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %12 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.asd_seq_data* %14, %struct.asd_seq_data** %4, align 8
  %15 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %16 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %23 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %27 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %31 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %30, i32 0, i32 0
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %34 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %38 = call i32 @asd_ascb_free(%struct.asd_ascb* %37)
  ret void
}

declare dso_local %struct.asd_ascb* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @asd_ascb_free(%struct.asd_ascb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
