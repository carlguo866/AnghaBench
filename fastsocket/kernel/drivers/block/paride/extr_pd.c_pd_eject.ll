; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_eject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"before unlock on eject\00", align 1
@IDE_DOORUNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"after unlock on eject\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"before eject\00", align 1
@IDE_EJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"after eject\00", align 1
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_unit*)* @pd_eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_eject(%struct.pd_unit* %0) #0 {
  %2 = alloca %struct.pd_unit*, align 8
  store %struct.pd_unit* %0, %struct.pd_unit** %2, align 8
  %3 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %4 = call i32 @DBMSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @pd_wait_for(%struct.pd_unit* %3, i32 0, i32 %4)
  %6 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %7 = load i32, i32* @IDE_DOORUNLOCK, align 4
  %8 = call i32 @pd_send_command(%struct.pd_unit* %6, i32 1, i32 0, i32 0, i32 0, i32 0, i32 %7)
  %9 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %10 = call i32 @DBMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @pd_wait_for(%struct.pd_unit* %9, i32 0, i32 %10)
  %12 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %13 = call i32 @DBMSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @pd_wait_for(%struct.pd_unit* %12, i32 0, i32 %13)
  %15 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %16 = load i32, i32* @IDE_EJECT, align 4
  %17 = call i32 @pd_send_command(%struct.pd_unit* %15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %16)
  %18 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %19 = call i32 @DBMSG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @pd_wait_for(%struct.pd_unit* %18, i32 0, i32 %19)
  %21 = load i32, i32* @Ok, align 4
  ret i32 %21
}

declare dso_local i32 @pd_wait_for(%struct.pd_unit*, i32, i32) #1

declare dso_local i32 @DBMSG(i8*) #1

declare dso_local i32 @pd_send_command(%struct.pd_unit*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
