; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_enable_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { i32 }

@BSTP_INFO_AGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*)* @bstp_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_enable_port(%struct.bstp_state* %0, %struct.bstp_port* %1) #0 {
  %3 = alloca %struct.bstp_state*, align 8
  %4 = alloca %struct.bstp_port*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %3, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %4, align 8
  %5 = load i32, i32* @BSTP_INFO_AGED, align 4
  %6 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
