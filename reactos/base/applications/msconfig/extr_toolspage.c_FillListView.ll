; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_toolspage.c_FillListView.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_toolspage.c_FillListView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDS_TOOLS_CMD_NAME = common dso_local global i32 0, align 4
@IDS_TOOLS_CMD_DESCR = common dso_local global i32 0, align 4
@IDS_TOOLS_CMD_CMD = common dso_local global i32 0, align 4
@IDS_TOOLS_CMD_PARAM = common dso_local global i32 0, align 4
@CSIDL_SYSTEM = common dso_local global i32 0, align 4
@IDS_TOOLS_REGEDIT_NAME = common dso_local global i32 0, align 4
@IDS_TOOLS_REGEDIT_DESCR = common dso_local global i32 0, align 4
@IDS_TOOLS_REGEDIT_CMD = common dso_local global i32 0, align 4
@IDS_TOOLS_REGEDIT_PARAM = common dso_local global i32 0, align 4
@CSIDL_WINDOWS = common dso_local global i32 0, align 4
@IDS_TOOLS_SYSDM_NAME = common dso_local global i32 0, align 4
@IDS_TOOLS_SYSDM_DESCR = common dso_local global i32 0, align 4
@IDS_TOOLS_SYSDM_CMD = common dso_local global i32 0, align 4
@IDS_TOOLS_SYSDM_PARAM = common dso_local global i32 0, align 4
@IDS_TOOLS_INFO_NAME = common dso_local global i32 0, align 4
@IDS_TOOLS_INFO_DESCR = common dso_local global i32 0, align 4
@IDS_TOOLS_INFO_CMD = common dso_local global i32 0, align 4
@IDS_TOOLS_INFO_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FillListView() #0 {
  %1 = load i32, i32* @IDS_TOOLS_CMD_NAME, align 4
  %2 = load i32, i32* @IDS_TOOLS_CMD_DESCR, align 4
  %3 = load i32, i32* @IDS_TOOLS_CMD_CMD, align 4
  %4 = load i32, i32* @IDS_TOOLS_CMD_PARAM, align 4
  %5 = load i32, i32* @CSIDL_SYSTEM, align 4
  %6 = call i32 @AddItem(i32 %1, i32 %2, i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @IDS_TOOLS_REGEDIT_NAME, align 4
  %8 = load i32, i32* @IDS_TOOLS_REGEDIT_DESCR, align 4
  %9 = load i32, i32* @IDS_TOOLS_REGEDIT_CMD, align 4
  %10 = load i32, i32* @IDS_TOOLS_REGEDIT_PARAM, align 4
  %11 = load i32, i32* @CSIDL_WINDOWS, align 4
  %12 = call i32 @AddItem(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @IDS_TOOLS_SYSDM_NAME, align 4
  %14 = load i32, i32* @IDS_TOOLS_SYSDM_DESCR, align 4
  %15 = load i32, i32* @IDS_TOOLS_SYSDM_CMD, align 4
  %16 = load i32, i32* @IDS_TOOLS_SYSDM_PARAM, align 4
  %17 = load i32, i32* @CSIDL_SYSTEM, align 4
  %18 = call i32 @AddItem(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @IDS_TOOLS_INFO_NAME, align 4
  %20 = load i32, i32* @IDS_TOOLS_INFO_DESCR, align 4
  %21 = load i32, i32* @IDS_TOOLS_INFO_CMD, align 4
  %22 = load i32, i32* @IDS_TOOLS_INFO_PARAM, align 4
  %23 = load i32, i32* @CSIDL_SYSTEM, align 4
  %24 = call i32 @AddItem(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @AddItem(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
