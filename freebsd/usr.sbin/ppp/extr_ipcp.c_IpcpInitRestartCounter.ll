; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpInitRestartCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpInitRestartCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipcp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SECTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, i32)* @IpcpInitRestartCounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IpcpInitRestartCounter(%struct.fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipcp*, align 8
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = call %struct.ipcp* @fsm2ipcp(%struct.fsm* %6)
  store %struct.ipcp* %7, %struct.ipcp** %5, align 8
  %8 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %9 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SECTICKS, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load %struct.fsm*, %struct.fsm** %3, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %35 [
    i32 129, label %19
    i32 128, label %27
  ]

19:                                               ; preds = %2
  %20 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %21 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fsm*, %struct.fsm** %3, align 8
  %26 = getelementptr inbounds %struct.fsm, %struct.fsm* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %29 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fsm*, %struct.fsm** %3, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.fsm*, %struct.fsm** %3, align 8
  %37 = getelementptr inbounds %struct.fsm, %struct.fsm* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %27, %19
  ret void
}

declare dso_local %struct.ipcp* @fsm2ipcp(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
