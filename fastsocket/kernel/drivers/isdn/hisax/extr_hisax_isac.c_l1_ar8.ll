; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_l1_ar8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_l1_ar8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.isac* }
%struct.isac = type { i32 }

@TIMER3_VALUE = common dso_local global i32 0, align 4
@EV_TIMER3 = common dso_local global i32 0, align 4
@ISAC_CMD_AR8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_ar8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_ar8(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.isac*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.isac*, %struct.isac** %9, align 8
  store %struct.isac* %10, %struct.isac** %7, align 8
  %11 = load %struct.isac*, %struct.isac** %7, align 8
  %12 = getelementptr inbounds %struct.isac, %struct.isac* %11, i32 0, i32 0
  %13 = load i32, i32* @TIMER3_VALUE, align 4
  %14 = load i32, i32* @EV_TIMER3, align 4
  %15 = call i32 @FsmRestartTimer(i32* %12, i32 %13, i32 %14, i32* null, i32 2)
  %16 = load %struct.isac*, %struct.isac** %7, align 8
  %17 = load i32, i32* @ISAC_CMD_AR8, align 4
  %18 = call i32 @ph_command(%struct.isac* %16, i32 %17)
  ret void
}

declare dso_local i32 @FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @ph_command(%struct.isac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
