; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32 }

@TP_WRITE_MEM = common dso_local global i32 0, align 4
@TP_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2dev*, i32, i32)* @trackpoint_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_write(%struct.ps2dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @TP_WRITE_MEM, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %16 = load i32, i32* @TP_COMMAND, align 4
  %17 = call i32 @MAKE_PS2_CMD(i32 3, i32 0, i32 %16)
  %18 = call i32 @ps2_command(%struct.ps2dev* %14, i32* %15, i32 %17)
  ret i32 %18
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @MAKE_PS2_CMD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
