; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_set_wwns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_set_wwns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*)* @bfa_fcport_set_wwns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_set_wwns(%struct.bfa_fcport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcport_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %2, align 8
  %3 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bfa_trc(%struct.TYPE_6__* %25, i32 %28)
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %31 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bfa_trc(%struct.TYPE_6__* %32, i32 %35)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
