; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_logips2pp.c_ps2pp_set_smartscroll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_logips2pp.c_ps2pp_set_smartscroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @ps2pp_set_smartscroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2pp_set_smartscroll(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  store %struct.ps2dev* %8, %struct.ps2dev** %5, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %11 = call i32 @ps2pp_cmd(%struct.psmouse* %9, i8* %10, i32 50)
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %12, align 1
  %13 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %15 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %16 = call i32 @ps2_command(%struct.ps2dev* %13, i8* %14, i32 %15)
  %17 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %20 = call i32 @ps2_command(%struct.ps2dev* %17, i8* %18, i32 %19)
  %21 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %23 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %24 = call i32 @ps2_command(%struct.ps2dev* %21, i8* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  %28 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %31 = call i32 @ps2_command(%struct.ps2dev* %28, i8* %29, i32 %30)
  ret void
}

declare dso_local i32 @ps2pp_cmd(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
