; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_atari.c_parport_atari_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_atari.c_parport_atari_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.parport = type { i32 }

@st_mfp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PARPORT_STATUS_BUSY = common dso_local global i8 0, align 1
@PARPORT_STATUS_SELECT = common dso_local global i8 0, align 1
@PARPORT_STATUS_ERROR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*)* @parport_atari_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_atari_read_status(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st_mfp, i32 0, i32 0), align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  %8 = load i8, i8* @PARPORT_STATUS_BUSY, align 1
  %9 = zext i8 %8 to i32
  br label %10

10:                                               ; preds = %7, %6
  %11 = phi i32 [ 0, %6 ], [ %9, %7 ]
  %12 = load i8, i8* @PARPORT_STATUS_SELECT, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* @PARPORT_STATUS_ERROR, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
