; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_scbq_insert_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_scbq_insert_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.aic7xxx_scb*, %struct.aic7xxx_scb* }
%struct.aic7xxx_scb = type { %struct.aic7xxx_scb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.aic7xxx_scb*)* @scbq_insert_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scbq_insert_head(%struct.TYPE_3__* %0, %struct.aic7xxx_scb* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.aic7xxx_scb*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %6, align 8
  %8 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %9 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %8, i32 0, i32 0
  store %struct.aic7xxx_scb* %7, %struct.aic7xxx_scb** %9, align 8
  %10 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store volatile %struct.aic7xxx_scb* %10, %struct.aic7xxx_scb** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %14, align 8
  %16 = icmp eq %struct.aic7xxx_scb* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load volatile %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store volatile %struct.aic7xxx_scb* %20, %struct.aic7xxx_scb** %22, align 8
  br label %23

23:                                               ; preds = %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
