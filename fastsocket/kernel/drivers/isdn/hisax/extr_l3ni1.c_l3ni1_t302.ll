; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_t302.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_t302.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_4__ = type { i32, i64 }

@CC_SETUP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_t302 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_t302(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %8 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %7, i32 0, i32 2
  %9 = call i32 @L3DelTimer(i32* %8)
  %10 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %11 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %14 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 28, i32* %15, align 8
  %16 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @l3ni1_disconnect_req(%struct.l3_process* %16, i32 %17, i32* null)
  %19 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %20 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %23, align 8
  %25 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %26 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* @CC_SETUP_ERR, align 4
  %29 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %30 = call i32 %24(%struct.TYPE_6__* %27, i32 %28, %struct.l3_process* %29)
  ret void
}

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @l3ni1_disconnect_req(%struct.l3_process*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
